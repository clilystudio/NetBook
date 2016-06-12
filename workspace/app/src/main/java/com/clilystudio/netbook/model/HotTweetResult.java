package com.clilystudio.netbook.model;

public class HotTweetResult {

    private String msg;
    private boolean ok;
    private TimelineResult$Temp[] tweets;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String String1) {
        msg = String1;
    }

    public TimelineResult$Temp[] getTweets() {
        return tweets;
    }

    public void setTweets(TimelineResult$Temp[] Temp_1darray1) {
        tweets = Temp_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
