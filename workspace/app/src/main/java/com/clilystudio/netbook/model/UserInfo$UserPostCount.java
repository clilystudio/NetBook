
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$UserPostCount implements Serializable {

    private int collected;
    private int posted;
    private static final long serialVersionUID = 6406545074214643620L;

    public int getCollected()
    {
        return collected;
    }

    public int getPosted()
    {
        return posted;
    }

    public void setCollected(int int1)
    {
        collected = int1;
    }

    public void setPosted(int int1)
    {
        posted = int1;
    }
}
