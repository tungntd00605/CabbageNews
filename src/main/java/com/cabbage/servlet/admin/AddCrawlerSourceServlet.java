package com.cabbage.servlet.admin;

import com.cabbage.entity.Category;
import com.cabbage.entity.CrawlerSource;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class AddCrawlerSourceServlet extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(AddCrawlerSourceServlet.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("categories", ofy().load().type(Category.class).list());
        req.getRequestDispatcher("/admin/crawler-source/crawler-source-form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getParameter("url");
        String linkSelector = req.getParameter("linkSelector");
        String strLinkLimit = req.getParameter("linkLimit");
        long categoryId =  Long.parseLong(req.getParameter("categoryId"));
        String titleSelector = req.getParameter("titleSelector");
        String descriptionSelector = req.getParameter("descriptionSelector");
        String contentSelector = req.getParameter("contentSelector");
        String authorSelector = req.getParameter("authorSelector");
        int linkLimit = 10;
        try {
            linkLimit = Integer.parseInt(strLinkLimit);
        } catch (NumberFormatException e) {
            LOGGER.severe(e.getMessage());
        }
        // Need Validate data here.
        CrawlerSource crawlerSource = CrawlerSource.Builder.aCrawlerSource()
                .withUrl(url)
                .withLinkSelector(linkSelector)
                .withLinkLimit(linkLimit)
                .withTitleSelector(titleSelector)
                .withDescriptionSelector(descriptionSelector)
                .withContentSelector(contentSelector)
                .withAuthorSelector(authorSelector)
                .withCategoryId(categoryId)
                .withStatus(1)
                .build();

        ofy().save().entity(crawlerSource).now();
        resp.sendRedirect("/admin/crawler-source/list");
    }
}
