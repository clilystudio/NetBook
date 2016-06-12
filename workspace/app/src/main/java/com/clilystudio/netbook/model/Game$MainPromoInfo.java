
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Game$MainPromoInfo implements Serializable {

    private String desc;
    private int playingCount;
    private static final long serialVersionUID = -6306060308396347871L;

    public String getDesc()
    {
        return desc;
    }

    public int getPlayingCount()
    {
        return playingCount;
    }

    public void setDesc(String String1)
    {
        desc = String1;
    }

    public void setPlayingCount(int int1)
    {
        playingCount = int1;
    }
}
