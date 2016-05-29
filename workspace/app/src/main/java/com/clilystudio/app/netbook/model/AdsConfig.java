package com.clilystudio.app.netbook.model;

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

    public int getIndex() {
        return this.index;
    }

    public long getLastDeleteTime() {
        return this.lastDeleteTime;
    }

    public void setAdvertList(List<Advert> paramList) {
        this.advertList = paramList;
    }

    public void setIndex(int paramInt) {
        this.index = paramInt;
    }

    public void setLastDeleteTime(long paramLong) {
        this.lastDeleteTime = paramLong;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.AdsConfig
 * JD-Core Version:    0.6.2
 */