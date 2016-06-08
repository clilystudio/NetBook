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

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public int getChaptersCount() {
        return this.chaptersCount;
    }

    public void setChaptersCount(int paramInt) {
        this.chaptersCount = paramInt;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String paramString) {
        this.lastChapter = paramString;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

