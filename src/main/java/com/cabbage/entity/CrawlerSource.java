package com.cabbage.entity;

import com.cabbage.dto.CrawlerSourceDTO;
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
}
