package com.quanganh9x.lettuce.dto;

public class ArticleDTO {
    private Long id;
    private String url;
    private String title;
    private CategoryDTO category;
    private String description;
    private String content;
    private String thumbnail;
    private String author;
    private CrawlerSourceDTO crawlerSource;
    private int status;

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

    public CategoryDTO getCategory() {
        return category;
    }

    public void setCategory(CategoryDTO category) {
        this.category = category;
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

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public CrawlerSourceDTO getCrawlerSource() {
        return crawlerSource;
    }

    public void setCrawlerSource(CrawlerSourceDTO crawlerSource) {
        this.crawlerSource = crawlerSource;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
