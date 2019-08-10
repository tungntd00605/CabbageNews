package com.cabbage.servlet.admin;

import com.cabbage.entity.Article;
import com.googlecode.objectify.cmd.Query;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListArticleServlet extends HttpServlet {
    private static final int DEFAULT_PAGE = 1;
    private static final int DEFAULT_LIMIT = 10;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int page = DEFAULT_PAGE;
        int limit = DEFAULT_LIMIT;
        try {
            page = Integer.parseInt(req.getParameter("page"));
        } catch (Exception ex) {
        }
        try {
            limit = Integer.parseInt(req.getParameter("limit"));
        } catch (Exception ex) {

        }
        Query<Article> categoryQuery = ofy().load().type(Article.class);
        int totalPages = (int) Math.ceil(categoryQuery.count()/ (double) limit);
        categoryQuery = categoryQuery.limit(limit).offset((page - 1) * limit);

        req.setAttribute("currentPage", page);
        req.setAttribute("limit", limit);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("article", ofy().load().type(Article.class).list());
        req.getRequestDispatcher("/admin/article/list-article.jsp").forward(req,resp);
    }
}
