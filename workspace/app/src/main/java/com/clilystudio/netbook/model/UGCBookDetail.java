package com.clilystudio.netbook.model;

import java.util.Date;

public class UGCBookDetail {
    Author author;
    UGCBookDetail$UGCBookContainer[] books;
    String collectorCount;
    Date created;
    String desc;
    String shareLink;
    String title;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public UGCBookDetail$UGCBookContainer[] getBooks() {
        return this.books;
    }

    public void setBooks(UGCBookDetail$UGCBookContainer[] arruGCBookDetail$UGCBookContainer) {
        this.books = arruGCBookDetail$UGCBookContainer;
    }

    public String getCollectorCount() {
        return this.collectorCount;
    }

    public void setCollectorCount(String string) {
        this.collectorCount = string;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String string) {
        this.desc = string;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String string) {
        this.shareLink = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }
}
