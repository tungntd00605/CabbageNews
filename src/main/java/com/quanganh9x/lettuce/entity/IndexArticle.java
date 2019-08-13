package com.quanganh9x.lettuce.entity;

import java.util.Date;

public class IndexArticle {
    private String id;
    private String title;
    private String description;
    private String author;
    private Date createdAt;

    public IndexArticle(String id, String title, String description, String author, Date createdAt) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.author = author;
        this.createdAt = createdAt;
    }

    public IndexArticle() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }
}
