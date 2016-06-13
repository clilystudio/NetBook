package com.clilystudio.netbook.model;

public class Review
        extends ReviewSummary {
    private Author author;
    private int commentCount;
    private String content;
    private int rating;
    private String shareLink;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
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

    public int getRating() {
        return this.rating;
    }

    public void setRating(int n) {
        this.rating = n;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String string) {
        this.shareLink = string;
    }
}
