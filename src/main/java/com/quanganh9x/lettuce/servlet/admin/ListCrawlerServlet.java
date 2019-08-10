package com.quanganh9x.lettuce.servlet.admin;

import com.quanganh9x.lettuce.entity.CrawlerSource;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListCrawlerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("crawlerSource" , ofy().load().type(CrawlerSource.class).list());
        req.getRequestDispatcher("/admin/crawler-source/list-crawler.jsp").forward(req,resp);
    }
}
