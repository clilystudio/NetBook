package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public class UserInfo$UserPostCount
        implements Serializable {
    private static final long serialVersionUID = 6406545074214643620L;
    private int collected;
    private int posted;

    public int getCollected() {
        return this.collected;
    }

    public int getPosted() {
        return this.posted;
    }

    public void setCollected(int paramInt) {
        this.collected = paramInt;
    }

    public void setPosted(int paramInt) {
        this.posted = paramInt;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UserInfo.UserPostCount
 * JD-Core Version:    0.6.2
 */