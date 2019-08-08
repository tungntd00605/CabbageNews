package com.quanganh9x.marquee.servlet.admin;

import com.quanganh9x.marquee.entity.Category;
import com.quanganh9x.marquee.entity.CrawlerSource;

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
        req.getRequestDispatcher("/admin/crawler-source/form.jsp").forward(req, resp);
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
        String thumbnailSelector = req.getParameter("thumbnailSelector");
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
                .withThumbnailSelector(thumbnailSelector)
                .withCategoryId(categoryId)
                .withStatus(1)
                .build();

        ofy().save().entity(crawlerSource).now();
        resp.sendRedirect("/admin/crawler-source/list");
    }
}
