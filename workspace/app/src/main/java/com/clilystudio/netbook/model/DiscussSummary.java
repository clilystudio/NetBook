package com.clilystudio.netbook.model;

import java.util.Date;

public class DiscussSummary {
    public int likeCount;
    private String _id;
    private Author author;
    private int commentCount;
    private Date created;
    private String state;
    private String title;
    private String type;
    private Date updated;
    private int voteCount;

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

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public int getVoteCount() {
        return this.voteCount;
    }

    public void setVoteCount(int n) {
        this.voteCount = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
