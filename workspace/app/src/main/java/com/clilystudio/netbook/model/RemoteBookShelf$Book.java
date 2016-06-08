package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf$Book {
    private String _id;
    private String author;
    private int chaptersCount;
    private String cover;
    private boolean hasCp;
    private String lastChapter;
    private String title;
    private Date updated;

    public RemoteBookShelf$Book(RemoteBookShelf paramRemoteBookShelf) {
    }

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

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public String getId() {
        return this._id;
    }

    public void setId(String paramString) {
        this._id = paramString;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String paramString) {
        this.lastChapter = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public boolean isHasCp() {
        return this.hasCp;
    }

    public void setHasCp(boolean paramBoolean) {
        this.hasCp = paramBoolean;
    }
}

