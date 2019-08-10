package com.quanganh9x.lettuce.servlet.client;

import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.Category;
import com.quanganh9x.lettuce.service.ElasticsearchService;
import org.elasticsearch.client.ElasticsearchClient;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;
import static com.quanganh9x.lettuce.service.ElasticsearchService.searchArticle;

public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String what = req.getParameter("what");
        if (what == null) return;
        List<Article> articles = new ArrayList<>();
        ElasticsearchService.getClient();
        List<String> ids = searchArticle(what);
        for (String id:ids
             ) {
            Article article = ofy().load().type(Article.class).id(Long.parseLong(id)).now();
            articles.add(article);
        }
        req.setAttribute("articles", articles);
        req.getRequestDispatcher("/client/search.jsp").forward(req, resp);
    }
}
