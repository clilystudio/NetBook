package com.clilystudio.netbook.model;

public class BookFeed {
    private boolean fat;
    private long lastActionTime;
    private String title;

    public long getLastActionTime() {
        return this.lastActionTime;
    }

    public void setLastActionTime(long l) {
        this.lastActionTime = l;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public boolean isFat() {
        return this.fat;
    }

    public void setFat(boolean bl) {
        this.fat = bl;
    }
}
