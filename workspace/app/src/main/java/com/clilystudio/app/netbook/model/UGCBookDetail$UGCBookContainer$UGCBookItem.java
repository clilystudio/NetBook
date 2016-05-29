package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;

public class UGCBookDetail$UGCBookContainer$UGCBookItem {
    private String _id;
    private String author;
    private String cover;
    private int latelyFollower;
    private String title;
    private long wordCount;

    public String getAuthor() {
        return this.author;
    }

    public String getCover() {
        return this.cover;
    }

    public String getFullCover() {
        return ApiService.a + this.cover + "-covers";
    }

    public int getLatelyFollower() {
        return this.latelyFollower;
    }

    public String getTitle() {
        return this.title;
    }

    public long getWordCount() {
        return this.wordCount;
    }

    public String get_id() {
        return this._id;
    }

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public void setLatelyFollower(int paramInt) {
        this.latelyFollower = paramInt;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public void setWordCount(long paramLong) {
        this.wordCount = paramLong;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UGCBookDetail.UGCBookContainer.UGCBookItem
 * JD-Core Version:    0.6.2
 */