package com.clilystudio.netbook.model;

import java.util.Date;

public class Post {
    private String _id;
    private Author author;
    private PostBook book;
    private int commentCount;
    private String content;
    private Date created;
    private String shareLink;
    private String title;
    private String type;
    private int voteCount;
    private Vote[] votes;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public PostBook getBook() {
        if (this.book == null) {
            this.book = new PostBook();
            this.book.set_id("");
            this.book.setTitle("\u6b64\u4e66\u4e0d\u5b58\u5728");
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

    public String getContent() {
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String string) {
        this.shareLink = string;
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
