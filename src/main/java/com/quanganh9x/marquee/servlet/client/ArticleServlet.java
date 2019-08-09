package com.quanganh9x.marquee.servlet.client;

import com.googlecode.objectify.Key;
import com.googlecode.objectify.Ref;
import com.quanganh9x.marquee.entity.Article;
import com.quanganh9x.marquee.entity.Category;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ArticleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String arcId = req.getParameter("arcId");
        System.out.println(arcId);
        if (arcId == null || arcId.isEmpty()) return;
        Article article = ofy().load().type(Article.class).id(Long.parseLong(arcId)).now();
        if (article == null) return;
        req.setAttribute("article", article);
        req.getRequestDispatcher("/client/article.jsp").forward(req, resp);
    }
}
