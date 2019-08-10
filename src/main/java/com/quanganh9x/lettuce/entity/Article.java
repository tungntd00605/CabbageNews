package com.quanganh9x.lettuce.entity;

import com.quanganh9x.lettuce.dto.ArticleDTO;
import com.googlecode.objectify.Key;
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
    @Index
    @Load
    private Ref<Category> category;
    private String description;
    private String content;
    private String thumbnail;
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
        this.category = Ref.create(Key.create(Category.class, dto.getCrawlerSource().getCategoryId()));
        this.description = dto.getDescription();
        this.content = dto.getContent();
        this.author = dto.getAuthor();
        this.thumbnail = dto.getThumbnail();
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

    public static final class Builder {
        private Long id;
        private String url;
        private String title;
        private String description;
        private String content;
        private String author;
        private long createdAtMLS;
        private long updatedAtMLS;
        private long deletedAtMLS;
        private int status;

        private Builder() {
        }

        public static Builder anArticle() {
            return new Builder();
        }

        public Builder withId(Long id) {
            this.id = id;
            return this;
        }

        public Builder withUrl(String url) {
            this.url = url;
            return this;
        }

        public Builder withTitle(String title) {
            this.title = title;
            return this;
        }

        public Builder withDescription(String description) {
            this.description = description;
            return this;
        }

        public Builder withContent(String content) {
            this.content = content;
            return this;
        }

        public Builder withAuthor(String author) {
            this.author = author;
            return this;
        }

        public Builder withCreatedAtMLS(long createdAtMLS) {
            this.createdAtMLS = createdAtMLS;
            return this;
        }

        public Builder withUpdatedAtMLS(long updatedAtMLS) {
            this.updatedAtMLS = updatedAtMLS;
            return this;
        }

        public Builder withDeletedAtMLS(long deletedAtMLS) {
            this.deletedAtMLS = deletedAtMLS;
            return this;
        }

        public Builder withStatus(int status) {
            this.status = status;
            return this;
        }

        public Article build() {
            Article article = new Article();
            article.setId(id);
            article.setUrl(url);
            article.setTitle(title);
            article.setDescription(description);
            article.setContent(content);
            article.setAuthor(author);
            article.setCreatedAtMLS(createdAtMLS);
            article.setUpdatedAtMLS(updatedAtMLS);
            article.setDeletedAtMLS(deletedAtMLS);
            article.setStatus(status);
            return article;
        }
    }
}
