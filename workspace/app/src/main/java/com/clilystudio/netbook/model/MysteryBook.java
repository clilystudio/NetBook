package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class MysteryBook {
    private String _id;
    private String author;
    private String cover;
    private String lastChapter;
    private String title;
    private Date updated;

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
        return ApiService.a + this.cover;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String string) {
        this.lastChapter = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
