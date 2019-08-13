package com.quanganh9x.lettuce.servlet.client;

import com.google.appengine.api.search.Results;
import com.google.appengine.api.search.ScoredDocument;
import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.service.IndexService;
import com.quanganh9x.lettuce.utils.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class SearchServlet extends HttpServlet {
    private String buildQuery(String whatToFind, int timeToFind) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Date date = new Date();
        String todate = dateFormat.format(date);

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 0 - timeToFind);
        String fromdate = dateFormat.format(cal.getTime());
        return whatToFind + " AND createdAt >= " + fromdate;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String what = req.getParameter("query");
        String time = req.getParameter("time");
        int space = 0;
        if (StringUtil.isNullOrEmpty(what)) what = "";
        if (StringUtil.isNullOrEmpty(time)) space = Integer.parseInt(time);
        List<Article> articles = new ArrayList<>();
        //
        IndexService service = new IndexService();
        Results<ScoredDocument> results = service.retrieveDocuments(buildQuery(what, space));
        results.forEach((x) -> {
            List<Article> a = ofy().load().type(Article.class).filter("title", x.getOnlyField("title").getText()).list();
            articles.addAll(a);
        });
        //
        req.setAttribute("articles", articles);
        req.setAttribute("arcSize", String.valueOf(articles.size()));
        req.getRequestDispatcher("/client/search.jsp").forward(req, resp);
    }
}
