package com.clilystudio.netbook.model;

public class TweetResult {
    private boolean ok;
    private Tweet tweet;
    private User user;

    public Tweet getTweet() {
        return this.tweet;
    }

    public void setTweet(Tweet paramTweet) {
        this.tweet = paramTweet;
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

