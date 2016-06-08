package com.clilystudio.netbook.model;

public class HotTweetResult {
    private String msg;
    private boolean ok;
    private TimelineResult.Temp[] tweets;

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String paramString) {
        this.msg = paramString;
    }

    public TimelineResult.Temp[] getTweets() {
        return this.tweets;
    }

    public void setTweets(TimelineResult.Temp[] paramArrayOfTemp) {
        this.tweets = paramArrayOfTemp;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

