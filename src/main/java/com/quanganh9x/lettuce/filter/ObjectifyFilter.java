package com.quanganh9x.lettuce.filter;

import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.Category;
import com.quanganh9x.lettuce.entity.CrawlerSource;
import com.googlecode.objectify.ObjectifyService;

import javax.servlet.*;
import java.io.IOException;


public class ObjectifyFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ObjectifyService.register(Article.class);
        ObjectifyService.register(Category.class);
        ObjectifyService.register(CrawlerSource.class);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {

    }
}
