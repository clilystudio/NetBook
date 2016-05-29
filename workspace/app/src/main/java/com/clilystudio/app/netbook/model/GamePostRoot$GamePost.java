package com.clilystudio.app.netbook.model;

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

    public String getBlock() {
        return this.block;
    }

    public int getCommentCount() {
        return this.commentCount;
    }

    public String getContent() {
        return this.content;
    }

    public Date getCreated() {
        return this.created;
    }

    public int getLikeCount() {
        return this.likeCount;
    }

    public String getState() {
        return this.state;
    }

    public String getType() {
        return this.type;
    }

    public String get_id() {
        return this._id;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public void setBlock(String paramString) {
        this.block = paramString;
    }

    public void setCommentCount(int paramInt) {
        this.commentCount = paramInt;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public void setLikeCount(int paramInt) {
        this.likeCount = paramInt;
    }

    public void setState(String paramString) {
        this.state = paramString;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GamePostRoot.GamePost
 * JD-Core Version:    0.6.2
 */