package com.clilystudio.app.netbook.model;

public class TweetsResult {
    private String code;
    private boolean ok;
    private Tweet[] tweets;
    private User user;

    public String getCode() {
        return this.code;
    }

    public Tweet[] getTweets() {
        return this.tweets;
    }

    public User getUser() {
        return this.user;
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

    public void setTweets(Tweet[] paramArrayOfTweet) {
        this.tweets = paramArrayOfTweet;
    }

    public void setUser(User paramUser) {
        this.user = paramUser;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TweetsResult
 * JD-Core Version:    0.6.2
 */