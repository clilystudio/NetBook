package com.clilystudio.netbook.model;

import java.util.Date;

public class UGCBookDetail {
    Author author;
    UGCBookDetail.UGCBookContainer[] books;
    String collectorCount;
    Date created;
    String desc;
    String shareLink;
    String title;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public UGCBookDetail.UGCBookContainer[] getBooks() {
        return this.books;
    }

    public void setBooks(UGCBookDetail.UGCBookContainer[] paramArrayOfUGCBookContainer) {
        this.books = paramArrayOfUGCBookContainer;
    }

    public String getCollectorCount() {
        return this.collectorCount;
    }

    public void setCollectorCount(String paramString) {
        this.collectorCount = paramString;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String paramString) {
        this.shareLink = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }
}

