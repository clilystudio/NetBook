package com.clilystudio.netbook.model;

import java.util.Date;

public class BookUpdate {
    private String _id;
    private String author;
    private int chaptersCount;
    private String lastChapter;
    private Date updated;

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String string) {
        this.author = string;
    }

    public int getChaptersCount() {
        return this.chaptersCount;
    }

    public void setChaptersCount(int n) {
        this.chaptersCount = n;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String string) {
        this.lastChapter = string;
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
