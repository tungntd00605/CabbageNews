package com.cabbage.entity;

import com.cabbage.dto.ArticleDTO;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

import java.util.Calendar;

@Entity
public class Article {
    @Id
    private Long id;
    @Index
    private String url;
    @Index
    private String title;
    private Ref<Category> category;
    private String description;
    private String content;
    @Index
    private String author;
    @Index
    @Load
    private Ref<CrawlerSource> crawlerSource;
    private long createdAtMLS;
    private long updatedAtMLS;
    private long deletedAtMLS;
    @Index
    private int status;

    public Article() {
    }

    public Article(ArticleDTO dto) {
        this.id = dto.getId();
        this.url = dto.getUrl();
        this.title = dto.getTitle();
        this.category = Ref.create(dto.getCategory());
        this.description = dto.getDescription();
        this.content = dto.getContent();
        this.author = dto.getAuthor();
        this.crawlerSource = Ref.create(new CrawlerSource(dto.getCrawlerSource()));
        this.createdAtMLS = Calendar.getInstance().getTimeInMillis();
        this.updatedAtMLS = Calendar.getInstance().getTimeInMillis();
        this.status = dto.getStatus();
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Category getCategory() {
        return category.get();
    }

    public void setCategory(Category category) {
        this.category = Ref.create(category);
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public CrawlerSource getCrawlerSource() {
        return crawlerSource.get();
    }

    public void setCrawlerSource(CrawlerSource crawlerSource) {
        this.crawlerSource = Ref.create(crawlerSource);
    }

    public long getCreatedAtMLS() {
        return createdAtMLS;
    }

    public void setCreatedAtMLS(long createdAtMLS) {
        this.createdAtMLS = createdAtMLS;
    }

    public long getUpdatedAtMLS() {
        return updatedAtMLS;
    }

    public void setUpdatedAtMLS(long updatedAtMLS) {
        this.updatedAtMLS = updatedAtMLS;
    }

    public long getDeletedAtMLS() {
        return deletedAtMLS;
    }

    public void setDeletedAtMLS(long deletedAtMLS) {
        this.deletedAtMLS = deletedAtMLS;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
