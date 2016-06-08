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

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public int getCommentCount() {
        return this.commentCount;
    }

    public void setCommentCount(int paramInt) {
        this.commentCount = paramInt;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String paramString) {
        this.state = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public int getVoteCount() {
        return this.voteCount;
    }

    public void setVoteCount(int paramInt) {
        this.voteCount = paramInt;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

