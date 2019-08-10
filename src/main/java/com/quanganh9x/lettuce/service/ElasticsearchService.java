package com.quanganh9x.lettuce.service;

import org.apache.http.HttpHost;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;

public class ElasticsearchService {
    public static RestHighLevelClient getClient() {
        return new RestHighLevelClient(
                RestClient.builder(
                        new HttpHost("3537da0022e4424c851ec7064ba92cd3.asia-northeast1.gcp.cloud.es.io", 9243, "https")));
    }
}
