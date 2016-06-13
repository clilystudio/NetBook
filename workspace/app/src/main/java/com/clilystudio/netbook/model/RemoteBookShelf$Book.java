package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf$Book {
    final /* synthetic */ RemoteBookShelf this$0;
    private String _id;
    private String author;
    private int chaptersCount;
    private String cover;
    private boolean hasCp;
    private String lastChapter;
    private String title;
    private Date updated;

    public RemoteBookShelf$Book(RemoteBookShelf remoteBookShelf) {
        this.this$0 = remoteBookShelf;
    }

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

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public String getId() {
        return this._id;
    }

    public void setId(String string) {
        this._id = string;
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

    public boolean isHasCp() {
        return this.hasCp;
    }

    public void setHasCp(boolean bl) {
        this.hasCp = bl;
    }
}
