package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Game$MainPromoInfo
        implements Serializable {
    private static final long serialVersionUID = -6306060308396347871L;
    private String desc;
    private int playingCount;

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public int getPlayingCount() {
        return this.playingCount;
    }

    public void setPlayingCount(int paramInt) {
        this.playingCount = paramInt;
    }
}

