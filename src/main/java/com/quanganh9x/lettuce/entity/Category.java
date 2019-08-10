package com.quanganh9x.lettuce.entity;

import com.quanganh9x.lettuce.dto.CategoryDTO;
import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Entity
public class Category {
    @Id
    private Long id;
    private String name;
    private String description;
    private String thumbnail;
    @Index
    @Load
    private List<Ref<Article>> articles;
    private long createdAtMLS;
    private long updatedAtMLS;
    private long deletedAtMLS;
    @Index
    private int status;

    public Category() {
        this.createdAtMLS = Calendar.getInstance().getTimeInMillis();
        this.updatedAtMLS = Calendar.getInstance().getTimeInMillis();
        this.status = 1;
    }

    public Category(CategoryDTO category) {
        this.id = category.getId();
        this.name = category.getName();
        this.description = category.getDescription();
        this.thumbnail = category.getThumbnail();
        this.createdAtMLS = Calendar.getInstance().getTimeInMillis();
        this.updatedAtMLS = Calendar.getInstance().getTimeInMillis();
        this.status = category.getStatus();
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

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
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
        private String name;
        private String description;
        private String thumbnail;
        private long createdAtMLS;
        private long updatedAtMLS;
        private long deletedAtMLS;
        private int status;

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

        public Builder withThumbnail(String thumbnail) {
            this.thumbnail = thumbnail;
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

        public Category build() {
            Category category = new Category();
            category.setId(id);
            category.setName(name);
            category.setDescription(description);
            category.setThumbnail(thumbnail);
            category.setCreatedAtMLS(createdAtMLS);
            category.setUpdatedAtMLS(updatedAtMLS);
            category.setDeletedAtMLS(deletedAtMLS);
            category.setStatus(status);
            return category;
        }
    }
}
