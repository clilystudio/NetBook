package com.clilystudio.netbook.model;

public class TweetsResult {
    private String code;
    private boolean ok;
    private Tweet[] tweets;
    private User user;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public Tweet[] getTweets() {
        return this.tweets;
    }

    public void setTweets(Tweet[] arrtweet) {
        this.tweets = arrtweet;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
