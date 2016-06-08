package com.clilystudio.netbook.model;

public class BookFeed {
    private boolean fat;
    private long lastActionTime;
    private String title;

    public long getLastActionTime() {
        return this.lastActionTime;
    }

    public void setLastActionTime(long paramLong) {
        this.lastActionTime = paramLong;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public boolean isFat() {
        return this.fat;
    }

    public void setFat(boolean paramBoolean) {
        this.fat = paramBoolean;
    }
}

