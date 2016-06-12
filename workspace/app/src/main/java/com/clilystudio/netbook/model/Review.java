package com.clilystudio.netbook.model;

public class Review extends ReviewSummary {

    private Author author;
    private int commentCount;
    private String content;
    private int rating;
    private String shareLink;

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

    public String getContent() {
        return content;
    }

    public void setContent(String String1) {
        content = String1;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int int1) {
        rating = int1;
    }

    public String getShareLink() {
        return shareLink;
    }

    public void setShareLink(String String1) {
        shareLink = String1;
    }
}
