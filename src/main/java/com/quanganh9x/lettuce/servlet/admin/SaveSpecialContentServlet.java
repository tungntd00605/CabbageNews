package com.quanganh9x.lettuce.servlet.admin;

import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.Category;
import com.quanganh9x.lettuce.utils.StringUtil;
import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        String strCategoryId = jsonObject.getString("categoryId");
        String description = jsonObject.getString("description");
        String content = jsonObject.getString("content");
        String author = jsonObject.getString("author");

        long categoryId = 0;
        try {
            categoryId = Long.parseLong(strCategoryId);
        } catch (NumberFormatException ex) {
            LOGGER.warning("Can not parse categoryId.");
            LOGGER.warning(ex.getMessage());
        }

        Article article = Article.Builder.anArticle()
                .withUrl(url)
                .withTitle(title)
                .withDescription(description)
                .withCategory(Ref.create(Key.create(Category.class, categoryId)))
                .withContent(content)
                .withAuthor(author)
                .build();
        ofy().save().entity(article).now();

        resp.sendRedirect("/admin/article/special-content");
    }
}
