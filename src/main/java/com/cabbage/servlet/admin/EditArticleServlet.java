package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;
import com.cabbage.entity.Category;
import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class EditArticleServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(EditArticleServlet.class.getSimpleName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getParameter("id");
        long idRe = Long.parseLong(req.getParameter("id"));
        req.setAttribute("editArticle", ofy().load().type(Article.class).id(idRe).now());
        req.setAttribute("categories", ofy().load().type(Category.class).list());
        Article article = new Article();
        article= ofy().load().type(Article.class).id(idRe).now();
        LOGGER.info("==== 1 " + article);
        LOGGER.info("====" + req.getParameter("id"));
        req.setAttribute("idRe",req.getParameter("id"));
        req.getRequestDispatcher("/admin/article/edit-article.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info("++ - "+req.getAttribute("idRe"));
        String url = req.getParameter("url");
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        String content = req.getParameter("content");
        String strCategoryId = req.getParameter("categoryId");
        long categoryId = 0;
        try {
            categoryId = Long.parseLong(strCategoryId);
        } catch (NumberFormatException ex) {
            LOGGER.warning("Can not parse categoryId.");
            LOGGER.warning(ex.getMessage());
        }
        ofy().save().entity(Article.Builder.anArticle()
                .withUrl(url)
                .withTitle(title)
                .withDescription(description)
                .withContent(content)
                .withCategory(Ref.create(Key.create(Category.class, categoryId)))
                .build()
        ).now();
//        resp.getWriter().println("Okie");
        resp.sendRedirect("/admin/article/list");
    }
}
