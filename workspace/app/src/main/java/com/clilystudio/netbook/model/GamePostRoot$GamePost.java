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
        return author;
    }

    public void setAuthor(Author Author1) {
        author = Author1;
    }

    public String getBlock() {
        return block;
    }

    public void setBlock(String String1) {
        block = String1;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int int1) {
        commentCount = int1;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String String1) {
        content = String1;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public int getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(int int1) {
        likeCount = int1;
    }

    public String getState() {
        return state;
    }

    public void setState(String String1) {
        state = String1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
