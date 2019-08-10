package com.quanganh9x.lettuce.api;

import com.quanganh9x.lettuce.entity.Article;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class CheckDuplicateArticleAPI extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getParameter("url");
        Article article = ofy().load().type(Article.class).filter("url", url).first().now();
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        HashMap<String, String> responseObject = new HashMap<>();

        if(article == null){
            responseObject.put("message", "This URL is not duplicated");
            responseObject.put("status", "0");
            resp.getWriter().println(new Gson().toJson(responseObject));
        } else {
            responseObject.put("message", "This URL is duplicated");
            responseObject.put("status", "1");
            resp.getWriter().println(new Gson().toJson(responseObject));
        }
    }
}
