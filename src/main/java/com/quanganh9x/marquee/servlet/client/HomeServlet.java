package com.quanganh9x.marquee.servlet.client;

import com.google.cloud.datastore.Cursor;
import com.quanganh9x.marquee.entity.Article;
import com.quanganh9x.marquee.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = ofy().load().type(Category.class).list();
        List<Article> articles = ofy().load().type(Article.class).list();
        articles.remove(0);
        req.setAttribute("categories", categories);
        req.setAttribute("articles", articles);
        req.setAttribute("hot", articles.get(0));
        req.setAttribute("featured", articles.subList(1,10));
        req.getRequestDispatcher("/client/home.jsp").forward(req, resp);
    }
}
