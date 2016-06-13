package com.clilystudio.netbook.model;

import java.util.Date;

public class BookHelpSummary {
    private String _id;
    private Author author;
    private int commentCount;
    private Date created;
    private String state;
    private String title;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public int getCommentCount() {
        return this.commentCount;
    }

    public void setCommentCount(int n) {
        this.commentCount = n;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String string) {
        this.state = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
