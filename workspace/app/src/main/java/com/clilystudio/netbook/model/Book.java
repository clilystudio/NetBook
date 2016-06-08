package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class Book {
    private String _id;
    private String author;
    private String cat;
    private String cover;
    private int latelyFollower;
    private String title;
    private int wordCount;

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public String getCat() {
        return this.cat;
    }

    public void setCat(String paramString) {
        this.cat = paramString;
    }

    public String getCover() {
        return ApiService.a + this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public int getLatelyFollower() {
        return this.latelyFollower;
    }

    public void setLatelyFollower(int paramInt) {
        this.latelyFollower = paramInt;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public int getWordCount() {
        return this.wordCount;
    }

    public void setWordCount(int paramInt) {
        this.wordCount = paramInt;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

