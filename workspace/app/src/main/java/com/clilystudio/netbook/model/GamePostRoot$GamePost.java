package com.clilystudio.netbook.model;

import java.util.Date;

public class GamePostRoot$GamePost {
    private String _id;
    private Author author;
    private String block;
    private int commentCount;
    private String content;
    private Date created;
    private int likeCount;
    private String state;
    private String type;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public String getBlock() {
        return this.block;
    }

    public void setBlock(String paramString) {
        this.block = paramString;
    }

    public int getCommentCount() {
        return this.commentCount;
    }

    public void setCommentCount(int paramInt) {
        this.commentCount = paramInt;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public int getLikeCount() {
        return this.likeCount;
    }

    public void setLikeCount(int paramInt) {
        this.likeCount = paramInt;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String paramString) {
        this.state = paramString;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

