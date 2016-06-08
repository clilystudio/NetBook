package com.clilystudio.netbook.model;

public class ChapterRoot {
    private Chapter chapter;
    private boolean ok;
    private int status;

    public Chapter getChapter() {
        return this.chapter;
    }

    public void setChapter(Chapter paramChapter) {
        this.chapter = paramChapter;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int paramInt) {
        this.status = paramInt;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

