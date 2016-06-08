package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$UserPostCount
        implements Serializable {
    private static final long serialVersionUID = 6406545074214643620L;
    private int collected;
    private int posted;

    public int getCollected() {
        return this.collected;
    }

    public void setCollected(int paramInt) {
        this.collected = paramInt;
    }

    public int getPosted() {
        return this.posted;
    }

    public void setPosted(int paramInt) {
        this.posted = paramInt;
    }
}

