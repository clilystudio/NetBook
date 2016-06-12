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
        return books;
    }

    public void setBooks(BookRankDetail[] BookRankDetail_1darray1) {
        books = BookRankDetail_1darray1;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public Date getCreated() {
        return updated;
    }

    public void setCreated(Date Date1) {
        updated = Date1;
    }

    public String getFullCover() {
        return new StringBuilder().append(ApiService.a).append(cover).toString();
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String String1) {
        tag = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
