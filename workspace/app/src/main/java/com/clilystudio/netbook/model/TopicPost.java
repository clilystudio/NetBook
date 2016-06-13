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

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getBlock() {
        return this.block;
    }

    public void setBlock(String string) {
        this.block = string;
    }

    public PostBook getBook() {
        if (this.book == null) {
            this.book = new PostBook();
            this.book.set_id("");
            this.book.setTitle("\u8be5\u4e66\u4e0d\u5b58\u5728");
            this.book.setCover("");
        }
        return this.book;
    }

    public void setBook(PostBook postBook) {
        this.book = postBook;
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
        if (this.type == null) {
            this.type = "";
        }
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
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
