package com.clilystudio.netbook.model;

public class TweetsResult {
    private String code;
    private boolean ok;
    private Tweet[] tweets;
    private User user;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public Tweet[] getTweets() {
        return this.tweets;
    }

    public void setTweets(Tweet[] paramArrayOfTweet) {
        this.tweets = paramArrayOfTweet;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User paramUser) {
        this.user = paramUser;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

