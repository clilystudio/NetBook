package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.List;

public class AdsConfig2 implements Serializable {

    private static final long serialVersionUID = -4786655193645998408L;
    private List advertList;
    private int index;

    public List getAdvertList() {
        return advertList;
    }

    public void setAdvertList(List List1) {
        advertList = List1;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int int1) {
        index = int1;
    }
}
