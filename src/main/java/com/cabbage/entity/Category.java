package com.cabbage.entity;

import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

import java.util.ArrayList;
import java.util.List;

@Entity
public class Category {
    @Id
    private Long id;
    private String name;
    private String description;
    @Index
    @Load
    private List<Ref<Article>> articles;

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Article> getArticles() {
        List<Article> listArticle = new ArrayList<>();
        for (Ref<Article> arc: articles) {
            listArticle.add(arc.get());
        }
        return listArticle;
    }

    public void setArticles(List<Article> articles) {
        List<Ref<Article>> listArticle = new ArrayList<>();
        for (Article arc: articles) {
            listArticle.add(Ref.create(arc));
        }
        this.articles = listArticle;
    }

    public static final class Builder {
        private Long id;
        private String name;
        private String description;
        private List<Ref<Article>> articles;

        private Builder() {
        }

        public static Builder aCategory() {
            return new Builder();
        }

        public Builder withId(Long id) {
            this.id = id;
            return this;
        }

        public Builder withName(String name) {
            this.name = name;
            return this;
        }

        public Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public Builder withArticles(List<Ref<Article>> articles) {
            this.articles = articles;
            return this;
        }

        public Category build() {
            Category category = new Category();
            category.setId(id);
            category.setName(name);
            category.setDescription(description);
            return category;
        }
    }
}
