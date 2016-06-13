package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.List;

public class AdsConfig2
        implements Serializable {
    private static final long serialVersionUID = -4786655193645998408L;
    private List<MenuAd> advertList;
    private int index;

    public List<MenuAd> getAdvertList() {
        return this.advertList;
    }

    public void setAdvertList(List<MenuAd> list) {
        this.advertList = list;
    }

    public int getIndex() {
        return this.index;
    }

    public void setIndex(int n) {
        this.index = n;
    }
}
