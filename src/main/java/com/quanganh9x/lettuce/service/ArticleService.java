package com.quanganh9x.lettuce.service;

import com.quanganh9x.lettuce.entity.Article;
import com.quanganh9x.lettuce.entity.Category;

import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ArticleService {
    public static ArticleService getInstance() {
        return new ArticleService();
    }

    public List<Article> getArticleByCategory(Category category) {
        return ofy().load().type(Article.class).filter("category", category).limit(3).list();

    }


}