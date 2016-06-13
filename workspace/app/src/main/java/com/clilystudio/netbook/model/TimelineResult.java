package com.clilystudio.netbook.model;

public class TimelineResult {
    private String code;
    private boolean ok;
    private TimelineResult$Names[] retweetNames;
    private TimelineResult$Temp[] timeline;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public TimelineResult$Names[] getRetweetNames() {
        return this.retweetNames;
    }

    public void setRetweetNames(TimelineResult$Names[] arrtimelineResult$Names) {
        this.retweetNames = arrtimelineResult$Names;
    }

    public TimelineResult$Temp[] getTweets() {
        return this.timeline;
    }

    public void setTweets(TimelineResult$Temp[] arrtimelineResult$Temp) {
        this.timeline = arrtimelineResult$Temp;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
