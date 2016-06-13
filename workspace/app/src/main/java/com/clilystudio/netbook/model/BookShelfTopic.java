package com.clilystudio.netbook.model;

public class BookShelfTopic {
    private String bookId;
    private String fullCover;
    private int postCount;
    private String title;

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public String getFullCover() {
        return this.fullCover;
    }

    public void setFullCover(String string) {
        this.fullCover = string;
    }

    public int getPostCount() {
        return this.postCount;
    }

    public void setPostCount(int n) {
        this.postCount = n;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }
}
