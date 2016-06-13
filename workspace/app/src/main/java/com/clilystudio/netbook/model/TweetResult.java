package com.clilystudio.netbook.model;

public class TweetResult {
    private boolean ok;
    private Tweet tweet;
    private User user;

    public Tweet getTweet() {
        return this.tweet;
    }

    public void setTweet(Tweet tweet) {
        this.tweet = tweet;
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
