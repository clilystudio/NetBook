package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class BookRankDetailList {
    private String _id;
    private BookRankDetail[] books;
    private String cover;
    private String tag;
    private String title;
    private Date updated;

    public BookRankDetail[] getBooks() {
        return this.books;
    }

    public void setBooks(BookRankDetail[] arrbookRankDetail) {
        this.books = arrbookRankDetail;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public Date getCreated() {
        return this.updated;
    }

    public void setCreated(Date date) {
        this.updated = date;
    }

    public String getFullCover() {
        return ApiService.mStaticsUrl + this.cover;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String string) {
        this.tag = string;
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
