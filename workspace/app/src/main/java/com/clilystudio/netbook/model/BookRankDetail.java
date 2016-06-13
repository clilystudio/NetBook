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

    public String getRetentionRatio() {
        return this.retentionRatio;
    }

    public void setRetentionRatio(String string) {
        this.retentionRatio = string;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String string) {
        this.shortIntro = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
