package com.cabbage.filter;

import com.cabbage.entity.Article;
import com.cabbage.entity.CrawlerSource;
import com.googlecode.objectify.ObjectifyService;

import javax.servlet.*;
import java.io.IOException;


public class MyObjectifyFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ObjectifyService.register(Article.class);
        ObjectifyService.register(CrawlerSource.class);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {

    }
}
