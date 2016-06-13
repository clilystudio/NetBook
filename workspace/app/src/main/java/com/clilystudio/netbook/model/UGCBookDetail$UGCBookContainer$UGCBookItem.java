package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class UGCBookDetail$UGCBookContainer$UGCBookItem {
    private String _id;
    private String author;
    private String cover;
    private int latelyFollower;
    private String title;
    private long wordCount;

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String string) {
        this.author = string;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public String getFullCover() {
        return ApiService.a + this.cover + "-covers";
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

    public long getWordCount() {
        return this.wordCount;
    }

    public void setWordCount(long l) {
        this.wordCount = l;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
