package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf$Book {

    RemoteBookShelf this$0;     // final access specifier removed
    private String _id;
    private String author;
    private int chaptersCount;
    private String cover;
    private boolean hasCp;
    private String lastChapter;
    private String title;
    private Date updated;
    public RemoteBookShelf$Book(RemoteBookShelf RemoteBookShelf1) {
        this$0 = RemoteBookShelf1;
    }

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

    public String getCover() {
        return cover;
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public String getId() {
        return _id;
    }

    public void setId(String String1) {
        _id = String1;
    }

    public String getLastChapter() {
        return lastChapter;
    }

    public void setLastChapter(String String1) {
        lastChapter = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public boolean isHasCp() {
        return hasCp;
    }

    public void setHasCp(boolean boolean1) {
        hasCp = boolean1;
    }
}
