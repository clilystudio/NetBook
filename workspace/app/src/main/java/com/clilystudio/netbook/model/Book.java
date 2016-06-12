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
        return author;
    }

    public void setAuthor(String String1) {
        author = String1;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String String1) {
        cat = String1;
    }

    public String getCover() {
        return new StringBuilder().append(ApiService.a).append(cover).toString();
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public int getLatelyFollower() {
        return latelyFollower;
    }

    public void setLatelyFollower(int int1) {
        latelyFollower = int1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public int getWordCount() {
        return wordCount;
    }

    public void setWordCount(int int1) {
        wordCount = int1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
