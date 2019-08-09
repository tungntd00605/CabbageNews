package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;
import com.cabbage.utils.StringUtil;
import com.google.gson.Gson;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class SaveSpecialContentServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(SaveSpecialContentServlet.class.getSimpleName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        String requestBody = StringUtil.convertInputStreamToString(req.getInputStream());
        JSONObject jsonObject = new JSONObject(requestBody);
        String url = jsonObject.getString("url");
        String title = jsonObject.getString("title");
        String description = jsonObject.getString("description");
        String content = jsonObject.getString("content");
        String author = jsonObject.getString("author");
        Article article = Article.Builder.anArticle()
                .withUrl(url)
                .withTitle(title)
                .withDescription(description)
                .withContent(content)
                .withAuthor(author)
                .build();
        ofy().save().entity(article).now();
//        resp.getWriter().println(new Gson().toJson(article));
        resp.sendRedirect("/admin/article/special-content");
    }
}
