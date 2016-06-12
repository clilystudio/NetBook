package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

public class UGCBookDetail$UGCBookContainer$UGCBookItem {

    private String _id;
    private String author;
    private String cover;
    private int latelyFollower;
    private String title;
    private long wordCount;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String String1) {
        author = String1;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String String1) {
        cover = String1;
    }

    public String getFullCover() {
        return new StringBuilder().append(ApiService.a).append(cover).append("-covers").toString();
    }

    public int getLatelyFollower() {
        return latelyFollower;
    }

    public void setLatelyFollower(int int1) {
        latelyFollower = int1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public long getWordCount() {
        return wordCount;
    }

    public void setWordCount(long long1) {
        wordCount = long1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
