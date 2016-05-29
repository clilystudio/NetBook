package com.clilystudio.app.netbook.model;

public class TweetResult {
    private boolean ok;
    private Tweet tweet;
    private User user;

    public Tweet getTweet() {
        return this.tweet;
    }

    public User getUser() {
        return this.user;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setTweet(Tweet paramTweet) {
        this.tweet = paramTweet;
    }

    public void setUser(User paramUser) {
        this.user = paramUser;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TweetResult
 * JD-Core Version:    0.6.2
 */