package com.clilystudio.netbook.model;

public class Review extends ReviewSummary {
    private Author author;
    private int commentCount;
    private String content;
    private int rating;
    private String shareLink;

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

    public String getContent() {
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public int getRating() {
        return this.rating;
    }

    public void setRating(int paramInt) {
        this.rating = paramInt;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String paramString) {
        this.shareLink = paramString;
    }
}

