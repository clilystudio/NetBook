package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$BookListCount
        implements Serializable {
    private static final long serialVersionUID = -3528347781783671315L;
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

