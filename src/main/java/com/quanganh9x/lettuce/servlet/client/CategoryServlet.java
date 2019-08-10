package com.quanganh9x.lettuce.servlet.client;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;
import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String catId = req.getParameter("catId");
        if (catId == null || catId.isEmpty()) return;
        Category category = ofy().load().type(Category.class).id(Long.parseLong(catId)).now();
        if (category == null) return;
        List<Article> articles = ofy().load().type(Article.class).filter("category", Ref.create(Key.create(Category.class, category.getId()))).list();
        if (articles.size() < 5) return;
        List<Category> categories = ofy().load().type(Category.class).list();
        req.setAttribute("categories", categories);
        req.setAttribute("category", category);
        req.setAttribute("hot", articles.get(0));
        req.setAttribute("featured", articles.subList(1,4));
        req.setAttribute("articles", articles.subList(4,10));
        req.getRequestDispatcher("/client/category.jsp").forward(req, resp);
    }
}
