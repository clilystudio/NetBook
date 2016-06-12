package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$BookListCount implements Serializable {

    private static final long serialVersionUID = -3528347781783671315L;
    private int collected;
    private int posted;

    public int getCollected() {
        return collected;
    }

    public void setCollected(int int1) {
        collected = int1;
    }

    public int getPosted() {
        return posted;
    }

    public void setPosted(int int1) {
        posted = int1;
    }
}
