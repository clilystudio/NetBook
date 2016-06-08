package com.clilystudio.netbook.model;

public class TimelineResult {
    private String code;
    private boolean ok;
    private TimelineResult.Names[] retweetNames;
    private TimelineResult.Temp[] timeline;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public TimelineResult.Names[] getRetweetNames() {
        return this.retweetNames;
    }

    public void setRetweetNames(TimelineResult.Names[] paramArrayOfNames) {
        this.retweetNames = paramArrayOfNames;
    }

    public TimelineResult.Temp[] getTweets() {
        return this.timeline;
    }

    public void setTweets(TimelineResult.Temp[] paramArrayOfTemp) {
        this.timeline = paramArrayOfTemp;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

