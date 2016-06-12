
package com.clilystudio.netbook.model;

public class TweetResult {

    private boolean ok;
    private Tweet tweet;
    private User user;

    public Tweet getTweet()
    {
        return tweet;
    }

    public User getUser()
    {
        return user;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setTweet(Tweet Tweet1)
    {
        tweet = Tweet1;
    }

    public void setUser(User User1)
    {
        user = User1;
    }
}
