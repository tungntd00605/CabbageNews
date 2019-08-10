package com.quanganh9x.lettuce.entity;

import com.quanganh9x.lettuce.dto.CrawlerSourceDTO;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Entity
public class CrawlerSource {
    @Id
    private Long id;
    @Index
    private String url;
    private String linkSelector;
    private int linkLimit;
    private String titleSelector;
    private String descriptionSelector;
    private String contentSelector;
    private String authorSelector;
    private String thumbnailSelector;
    private Long categoryId;
    private List<Ref<Article>> articles;
    private long createdAtMLS;
    private long updatedAtMLS;
    private long deletedAtMLS;
    @Index
    private int status;


    public CrawlerSource() {
        this.createdAtMLS = Calendar.getInstance().getTimeInMillis();
        this.updatedAtMLS = Calendar.getInstance().getTimeInMillis();
        this.status = 1;
    }

    public CrawlerSource(CrawlerSourceDTO dto) {
        this.id = dto.getId();
        this.url = dto.getUrl();
        this.linkSelector = dto.getLinkSelector();
        this.linkLimit = dto.getLinkLimit();
        this.titleSelector = dto.getTitleSelector();
        this.descriptionSelector = dto.getDescriptionSelector();
        this.contentSelector = dto.getContentSelector();
        this.authorSelector = dto.getAuthorSelector();
        this.thumbnailSelector = dto.getThumbnailSelector();
        this.categoryId = dto.getCategoryId();
        this.createdAtMLS = Calendar.getInstance().getTimeInMillis();
        this.updatedAtMLS = Calendar.getInstance().getTimeInMillis();
        this.status = 1;
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

    public String getLinkSelector() {
        return linkSelector;
    }

    public void setLinkSelector(String linkSelector) {
        this.linkSelector = linkSelector;
    }

    public int getLinkLimit() {
        return linkLimit;
    }

    public void setLinkLimit(int linkLimit) {
        this.linkLimit = linkLimit;
    }

    public String getTitleSelector() {
        return titleSelector;
    }

    public void setTitleSelector(String titleSelector) {
        this.titleSelector = titleSelector;
    }

    public String getDescriptionSelector() {
        return descriptionSelector;
    }

    public void setDescriptionSelector(String descriptionSelector) {
        this.descriptionSelector = descriptionSelector;
    }

    public String getContentSelector() {
        return contentSelector;
    }

    public void setContentSelector(String contentSelector) {
        this.contentSelector = contentSelector;
    }

    public String getAuthorSelector() {
        return authorSelector;
    }

    public void setAuthorSelector(String authorSelector) {
        this.authorSelector = authorSelector;
    }

    public String getThumbnailSelector() {
        return thumbnailSelector;
    }

    public void setThumbnailSelector(String thumbnailSelector) {
        this.thumbnailSelector = thumbnailSelector;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
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
        private String linkSelector;
        private int linkLimit;
        private String titleSelector;
        private String descriptionSelector;
        private String contentSelector;
        private String authorSelector;
        private String thumbnailSelector;
        private Long categoryId;
        private long createdAtMLS;
        private long updatedAtMLS;
        private long deletedAtMLS;
        private int status;

        private Builder() {
        }

        public static Builder aCrawlerSource() {
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

        public Builder withLinkSelector(String linkSelector) {
            this.linkSelector = linkSelector;
            return this;
        }

        public Builder withLinkLimit(int linkLimit) {
            this.linkLimit = linkLimit;
            return this;
        }

        public Builder withTitleSelector(String titleSelector) {
            this.titleSelector = titleSelector;
            return this;
        }

        public Builder withDescriptionSelector(String descriptionSelector) {
            this.descriptionSelector = descriptionSelector;
            return this;
        }

        public Builder withContentSelector(String contentSelector) {
            this.contentSelector = contentSelector;
            return this;
        }

        public Builder withAuthorSelector(String authorSelector) {
            this.authorSelector = authorSelector;
            return this;
        }

        public Builder withThumbnailSelector(String thumbnailSelector) {
            this.thumbnailSelector = thumbnailSelector;
            return this;
        }

        public Builder withCategoryId(Long categoryId) {
            this.categoryId = categoryId;
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

        public CrawlerSource build() {
            CrawlerSource crawlerSource = new CrawlerSource();
            crawlerSource.setId(id);
            crawlerSource.setUrl(url);
            crawlerSource.setLinkSelector(linkSelector);
            crawlerSource.setLinkLimit(linkLimit);
            crawlerSource.setTitleSelector(titleSelector);
            crawlerSource.setDescriptionSelector(descriptionSelector);
            crawlerSource.setContentSelector(contentSelector);
            crawlerSource.setAuthorSelector(authorSelector);
            crawlerSource.setThumbnailSelector(thumbnailSelector);
            crawlerSource.setCategoryId(categoryId);
            crawlerSource.setCreatedAtMLS(createdAtMLS);
            crawlerSource.setUpdatedAtMLS(updatedAtMLS);
            crawlerSource.setDeletedAtMLS(deletedAtMLS);
            crawlerSource.setStatus(status);
            return crawlerSource;
        }
    }
}
