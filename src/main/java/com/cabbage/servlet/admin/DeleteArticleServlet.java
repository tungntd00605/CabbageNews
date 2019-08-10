package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class DeleteArticleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ofy().delete().type(Article.class).id(Long.parseLong(req.getParameter("id")));
        resp.getWriter().print("delete success!");
        resp.sendRedirect("/admin/article/list");
    }
}
