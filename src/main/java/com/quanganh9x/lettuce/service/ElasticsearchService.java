package com.quanganh9x.lettuce.service;

import com.google.gson.Gson;
import com.quanganh9x.lettuce.dto.ArticleDTO;
import com.quanganh9x.lettuce.entity.Article;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.nio.client.HttpAsyncClientBuilder;
import org.elasticsearch.action.ActionListener;
import org.elasticsearch.action.DocWriteRequest;
import org.elasticsearch.action.DocWriteResponse;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestClientBuilder;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.unit.Fuzziness;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ElasticsearchService {
    private static RestHighLevelClient client;

    public static RestHighLevelClient getClient() {
        final CredentialsProvider credentialsProvider =
                new BasicCredentialsProvider();
        credentialsProvider.setCredentials(AuthScope.ANY,
                new UsernamePasswordCredentials("elastic", "UmRXRjFxOpN2mN9gebnTl8dQ"));
        client = new RestHighLevelClient(
                RestClient.builder(
                        new HttpHost("3537da0022e4424c851ec7064ba92cd3.asia-northeast1.gcp.cloud.es.io", 9243, "https")).setHttpClientConfigCallback(new RestClientBuilder.HttpClientConfigCallback() {
                    @Override
                    public HttpAsyncClientBuilder customizeHttpClient(
                            HttpAsyncClientBuilder httpClientBuilder) {
                        return httpClientBuilder
                                .setDefaultCredentialsProvider(credentialsProvider);
                    }
                }));
        return client;
    }

    public static Boolean checkArticleExists(String json) throws IOException {
        ArticleDTO o = new Gson().fromJson(json, ArticleDTO.class);
        GetRequest getRequest = new GetRequest(
                "articles",
                o.getId().toString());
        getRequest.fetchSourceContext(new FetchSourceContext(false));
        getRequest.storedFields("_none_");

        return client.exists(getRequest, RequestOptions.DEFAULT);
    }

    public static void indexArticle(String json) throws IOException {
        if (!checkArticleExists(json)) {
            IndexRequest index = new IndexRequest("articles");
            ArticleDTO o = new Gson().fromJson(json, ArticleDTO.class);
            index.id(o.getId().toString());
            XContentBuilder builder = XContentFactory.jsonBuilder();
            builder.startObject();
            {
                builder.field("title", o.getTitle());
                builder.field("description", o.getDescription());
                builder.field("author", (o.getAuthor().isEmpty() ? "quanganh" : o.getAuthor()));
            }
            builder.endObject();
            index.source(builder, XContentType.JSON);
            index.opType(DocWriteRequest.OpType.CREATE);
            client.indexAsync(index, RequestOptions.DEFAULT, new ActionListener<IndexResponse>() {
                @Override
                public void onResponse(IndexResponse indexResponse) {
                    if (indexResponse.getResult() == DocWriteResponse.Result.CREATED) {
                        System.out.println("success");
                    }
                }

                @Override
                public void onFailure(Exception e) {
                    e.printStackTrace();
                }
            });
        }
    }

    public static List<String> searchArticle(String what) throws IOException {
        SearchRequest searchRequest = new SearchRequest("articles");
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        QueryBuilder matchQueryBuilder = QueryBuilders.matchQuery("title", what)
                .fuzziness(Fuzziness.AUTO).maxExpansions(10);
        sourceBuilder.query(matchQueryBuilder);
        sourceBuilder.from(0);
        sourceBuilder.size(5);
        searchRequest.source(sourceBuilder);
        SearchResponse res = client.search(searchRequest, RequestOptions.DEFAULT);
        List<String> list = new ArrayList<>();
        SearchHits hits = res.getHits();
            for (SearchHit hit : hits) {
                list.add(hit.getId());
            }
            return list;
    }
}
