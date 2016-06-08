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

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public String getFullCover() {
        return ApiService.a + this.cover + "-covers";
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

    public long getWordCount() {
        return this.wordCount;
    }

    public void setWordCount(long paramLong) {
        this.wordCount = paramLong;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

