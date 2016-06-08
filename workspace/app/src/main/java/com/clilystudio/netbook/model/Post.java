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

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public PostBook getBook() {
        if (this.book == null) {
            this.book = new PostBook();
            this.book.set_id("");
            this.book.setTitle("此书不存在");
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

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String paramString) {
        this.shareLink = paramString;
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

    public int getVoteCount() {
        return this.voteCount;
    }

    public void setVoteCount(int paramInt) {
        this.voteCount = paramInt;
    }

    public Vote[] getVotes() {
        return this.votes;
    }

    public void setVotes(Vote[] paramArrayOfVote) {
        this.votes = paramArrayOfVote;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

