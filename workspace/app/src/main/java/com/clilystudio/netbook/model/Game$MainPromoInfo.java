package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Game$MainPromoInfo implements Serializable {

    private static final long serialVersionUID = -6306060308396347871L;
    private String desc;
    private int playingCount;

    public String getDesc() {
        return desc;
    }

    public void setDesc(String String1) {
        desc = String1;
    }

    public int getPlayingCount() {
        return playingCount;
    }

    public void setPlayingCount(int int1) {
        playingCount = int1;
    }
}
