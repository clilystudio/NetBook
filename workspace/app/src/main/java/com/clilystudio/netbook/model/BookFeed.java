package com.clilystudio.netbook.model;

public class BookFeed {

    private boolean fat;
    private long lastActionTime;
    private String title;

    public long getLastActionTime() {
        return lastActionTime;
    }

    public void setLastActionTime(long long1) {
        lastActionTime = long1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public boolean isFat() {
        return fat;
    }

    public void setFat(boolean boolean1) {
        fat = boolean1;
    }
}
