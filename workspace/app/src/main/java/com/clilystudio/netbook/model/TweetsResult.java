package com.clilystudio.netbook.model;

public class TweetsResult {

    private String code;
    private boolean ok;
    private Tweet[] tweets;
    private User user;

    public String getCode() {
        return code;
    }

    public void setCode(String String1) {
        code = String1;
    }

    public Tweet[] getTweets() {
        return tweets;
    }

    public void setTweets(Tweet[] Tweet_1darray1) {
        tweets = Tweet_1darray1;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User User1) {
        user = User1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
