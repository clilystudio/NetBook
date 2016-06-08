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

    public void setBooks(BookRankDetail[] paramArrayOfBookRankDetail) {
        this.books = paramArrayOfBookRankDetail;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public Date getCreated() {
        return this.updated;
    }

    public void setCreated(Date paramDate) {
        this.updated = paramDate;
    }

    public String getFullCover() {
        return ApiService.a + this.cover;
    }

    public String getTag() {
        return this.tag;
    }

    public void setTag(String paramString) {
        this.tag = paramString;
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

