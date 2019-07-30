package com.cabbage.dto;

import com.cabbage.entity.Article;
import com.cabbage.entity.CrawlerSource;

import java.util.List;

public class CrawlerSourceDTO {
    private Long id;
    private String url;
    private String linkSelector;
    private int linkLimit;
    private String titleSelector;
    private String descriptionSelector;
    private String contentSelector;
    private String authorSelector;
    private int status;

    public CrawlerSourceDTO() {
    }

    public CrawlerSourceDTO(CrawlerSource crawlerSource) {
        this.id = crawlerSource.getId();
        this.url = crawlerSource.getUrl();
        this.linkSelector = crawlerSource.getLinkSelector();
        this.linkLimit = crawlerSource.getLinkLimit();
        this.titleSelector = crawlerSource.getTitleSelector();
        this.descriptionSelector = crawlerSource.getDescriptionSelector();
        this.contentSelector = crawlerSource.getContentSelector();
        this.authorSelector = crawlerSource.getAuthorSelector();
        this.status = crawlerSource.getStatus();
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
