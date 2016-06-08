package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class BookRankDetail {
    private String _id;
    private String author;
    private String cat;
    private String cover;
    private int latelyFollower;
    private String retentionRatio;
    private String shortIntro;
    private String title;

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

    public String getRetentionRatio() {
        return this.retentionRatio;
    }

    public void setRetentionRatio(String paramString) {
        this.retentionRatio = paramString;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String paramString) {
        this.shortIntro = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

