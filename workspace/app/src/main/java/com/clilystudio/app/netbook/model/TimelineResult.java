package com.clilystudio.app.netbook.model;

public class TimelineResult {
    private String code;
    private boolean ok;
    private TimelineResult.Names[] retweetNames;
    private TimelineResult.Temp[] timeline;

    public String getCode() {
        return this.code;
    }

    public TimelineResult.Names[] getRetweetNames() {
        return this.retweetNames;
    }

    public TimelineResult.Temp[] getTweets() {
        return this.timeline;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setRetweetNames(TimelineResult.Names[] paramArrayOfNames) {
        this.retweetNames = paramArrayOfNames;
    }

    public void setTweets(TimelineResult.Temp[] paramArrayOfTemp) {
        this.timeline = paramArrayOfTemp;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TimelineResult
 * JD-Core Version:    0.6.2
 */