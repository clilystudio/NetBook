package com.clilystudio.netbook.model;

import java.util.Date;

public class TopicPost {
    public int likeCount;
    private String _id;
    private Author author;
    private String block;
    private PostBook book;
    private int commentCount;
    private Date created;
    private String state;
    private String title;
    private String type;
    private int voteCount;

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

    public PostBook getBook() {
        if (this.book == null) {
            this.book = new PostBook();
            this.book.set_id("");
            this.book.setTitle("该书不存在");
            this.book.setCover("");
        }
        return this.book;
    }

    public void setBook(PostBook paramPostBook) {
        this.book = paramPostBook;
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
        if (this.type == null)
            this.type = "";
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
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

