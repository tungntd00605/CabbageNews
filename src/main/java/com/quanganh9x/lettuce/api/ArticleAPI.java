package com.quanganh9x.lettuce.api;

import com.google.appengine.api.search.Document;
import com.google.appengine.api.search.Field;
import com.quanganh9x.lettuce.dto.ArticleDTO;
import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.IndexArticle;
import com.quanganh9x.lettuce.service.IndexService;
import com.quanganh9x.lettuce.utils.StringUtil;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ArticleAPI extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(ArticleAPI.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Article> articles = ofy().load().type(Article.class).list();
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        if (articles.size() > 0) {
            resp.getWriter().println(new Gson().toJson(articles));
        } else {
            HashMap<String, String> responseObject = new HashMap<>();
            responseObject.put("message", "No article to fetch");
            resp.getWriter().println(new Gson().toJson(responseObject));
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestBody = StringUtil.convertInputStreamToString(req.getInputStream());
        ArticleDTO articleDTO = new Gson().fromJson(requestBody, ArticleDTO.class);
        Article article = new Article(articleDTO);
        article.setStatus(1);
        ofy().save().entities(article).now();
        //
        IndexArticle index = new IndexArticle(article.getId().toString(), article.getTitle(), article.getDescription(), StringUtil.isNullOrEmpty(article.getAuthor()) ? "quanganh9x" : article.getAuthor(), new Date(article.getCreatedAtMLS()));
        Document newDoc = Document.newBuilder().setId(index.getId())
                .addField(Field.newBuilder().setName("title").setText(index.getTitle()))
                .addField(Field.newBuilder().setName("description").setText(index.getDescription()))
                .addField(Field.newBuilder().setName("author").setText(index.getAuthor()))
                .addField(Field.newBuilder().setName("createdAt").setDate(index.getCreatedAt())).build();
        IndexService service = new IndexService();
        service.indexDocument(newDoc);
        //
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().println(new Gson().toJson(article));
    }
}
