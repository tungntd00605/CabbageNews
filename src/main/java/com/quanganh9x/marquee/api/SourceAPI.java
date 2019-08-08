package com.quanganh9x.marquee.api;

import com.quanganh9x.marquee.dto.CrawlerSourceDTO;
import com.quanganh9x.marquee.entity.CrawlerSource;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class SourceAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        List<CrawlerSource> crawlerSources = ofy().load().type(CrawlerSource.class).filter("status", 1).list();
        List<CrawlerSourceDTO> dtos = new ArrayList<>();
        if(crawlerSources.size() >0){
            for (CrawlerSource source: crawlerSources) {
                dtos.add(new CrawlerSourceDTO(source));
            }
            resp.getWriter().println(new Gson().toJson(crawlerSources));
        } else {
            HashMap<String, String> responseObject = new HashMap<>();
            responseObject.put("message", "No source to fetch");
            resp.getWriter().println(new Gson().toJson(responseObject));
        }
    }
}
