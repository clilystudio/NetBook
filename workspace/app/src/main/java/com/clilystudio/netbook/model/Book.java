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

    public void setAuthor(String string) {
        this.author = string;
    }

    public String getCat() {
        return this.cat;
    }

    public void setCat(String string) {
        this.cat = string;
    }

    public String getCover() {
        return ApiService.mStaticsUrl + this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public int getLatelyFollower() {
        return this.latelyFollower;
    }

    public void setLatelyFollower(int n) {
        this.latelyFollower = n;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public int getWordCount() {
        return this.wordCount;
    }

    public void setWordCount(int n) {
        this.wordCount = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
