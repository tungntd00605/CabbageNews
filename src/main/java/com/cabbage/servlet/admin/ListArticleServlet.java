package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListArticleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("article", ofy().load().type(Article.class).list());
        req.getRequestDispatcher("/admin/article/list-article.jsp").forward(req,resp);
    }
}
