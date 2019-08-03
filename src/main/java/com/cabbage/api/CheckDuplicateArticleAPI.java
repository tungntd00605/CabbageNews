package com.cabbage.api;

import com.cabbage.entity.Article;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class CheckDuplicateArticleAPI extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getParameter("url");
        Article article = ofy().load().type(Article.class).filter("url", url).first().now();
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        if(article == null){
            resp.getWriter().println("no-duplicate");
        } else {
            resp.getWriter().println("duplicate");
        }
    }
}
