package com.clilystudio.netbook.model;

import java.util.Date;

public class GirlTopicSummary {
    private String _id;
    private Author author;
    private String block;
    private int commentCount;
    private Date created;
    private int likeCount;
    private String state;
    private String title;
    private String type;
    private Date updated;
    private int voteCount;
    private Vote[] votes;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getBlock() {
        return this.block;
    }

    public void setBlock(String string) {
        this.block = string;
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

    public int getLikeCount() {
        return this.likeCount;
    }

    public void setLikeCount(int n) {
        this.likeCount = n;
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

    public Vote[] getVotes() {
        return this.votes;
    }

    public void setVotes(Vote[] arrvote) {
        this.votes = arrvote;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
