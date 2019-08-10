package com.cabbage.servlet.admin;

import com.cabbage.entity.Category;
import com.cabbage.utils.StringUtil;
import com.google.gson.Gson;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class PreviewSpecialContentServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(PreviewSpecialContentServlet.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("categories", ofy().load().type(Category.class).list());
        req.getRequestDispatcher("/admin/article/special-content.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        String requestBody = StringUtil.convertInputStreamToString(req.getInputStream());
        JSONObject jsonObject = new JSONObject(requestBody);
        String url = jsonObject.getString("url");
        String titleSelector = jsonObject.getString("titleSelector");
        String descriptionSelector = jsonObject.getString("descriptionSelector");
        String contentSelector = jsonObject.getString("contentSelector");
        String authorSelector = jsonObject.getString("authorSelector");

        Document document = Jsoup.connect(url).ignoreContentType(true).get();
        String title = document.select(titleSelector).text();
        String description = document.select(descriptionSelector).text();
        String content = document.select(contentSelector).html();
        String author = document.select(authorSelector).text();
        HashMap<String, String> responseObject = new HashMap<>();
        responseObject.put("url", url);
        responseObject.put("title", title);
        responseObject.put("description", description);
        responseObject.put("content", content);
        responseObject.put("author", author);
        resp.getWriter().println(new Gson().toJson(responseObject));
    }
}
