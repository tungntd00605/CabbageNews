package com.cabbage.api;

import com.cabbage.dto.ArticleDTO;
import com.cabbage.entity.Article;
import com.cabbage.entity.CrawlerSource;
import com.cabbage.servlet.admin.AddCrawlerSourceServlet;
import com.cabbage.utils.StringUtil;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().println(new Gson().toJson(article));
    }
}
