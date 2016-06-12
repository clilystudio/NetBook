
package com.clilystudio.netbook.model;

public class TweetsResult {

    private String code;
    private boolean ok;
    private Tweet[] tweets;
    private User user;

    public String getCode()
    {
        return code;
    }

    public Tweet[] getTweets()
    {
        return tweets;
    }

    public User getUser()
    {
        return user;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setTweets(Tweet[] Tweet_1darray1)
    {
        tweets = Tweet_1darray1;
    }

    public void setUser(User User1)
    {
        user = User1;
    }
}
