package com.clilystudio.netbook.model;

import java.util.Date;

public class BookUpdate {

    private String _id;
    private String author;
    private int chaptersCount;
    private String lastChapter;
    private Date updated;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String String1) {
        author = String1;
    }

    public int getChaptersCount() {
        return chaptersCount;
    }

    public void setChaptersCount(int int1) {
        chaptersCount = int1;
    }

    public String getLastChapter() {
        return lastChapter;
    }

    public void setLastChapter(String String1) {
        lastChapter = String1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
