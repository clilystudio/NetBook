package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.List;

public class AdsConfig
        implements Serializable {
    private static final long serialVersionUID = 5519239417878198685L;
    private List<Advert> advertList;
    private int index;
    private long lastDeleteTime;

    public List<Advert> getAdvertList() {
        return this.advertList;
    }

    public void setAdvertList(List<Advert> paramList) {
        this.advertList = paramList;
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndex(int paramInt) {
        this.index = paramInt;
    }

    public long getLastDeleteTime() {
        return this.lastDeleteTime;
    }

    public void setLastDeleteTime(long paramLong) {
        this.lastDeleteTime = paramLong;
    }
}

