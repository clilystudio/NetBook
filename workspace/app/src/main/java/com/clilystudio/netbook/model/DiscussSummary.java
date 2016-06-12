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
        return author;
    }

    public void setAuthor(Author Author1) {
        author = Author1;
    }

    public int getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(int int1) {
        commentCount = int1;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public String getState() {
        return state;
    }

    public void setState(String String1) {
        state = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public int getVoteCount() {
        return voteCount;
    }

    public void setVoteCount(int int1) {
        voteCount = int1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
