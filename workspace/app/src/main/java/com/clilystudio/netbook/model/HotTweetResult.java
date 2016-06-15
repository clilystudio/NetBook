package com.clilystudio.netbook.model;

public class HotTweetResult {
    private String msg;
    private boolean ok;
    private TimelineResult.Temp[] tweets;

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String string) {
        this.msg = string;
    }

    public TimelineResult.Temp[] getTweets() {
        return this.tweets;
    }

    public void setTweets(TimelineResult.Temp[] temps) {
        this.tweets = temps;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
