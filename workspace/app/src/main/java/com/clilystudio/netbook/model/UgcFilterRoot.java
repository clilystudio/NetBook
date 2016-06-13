package com.clilystudio.netbook.model;

public class UgcFilterRoot {
    private UgcFilterRoot$FilterGroup[] data;
    private boolean ok;

    public UgcFilterRoot$FilterGroup[] getData() {
        return this.data;
    }

    public void setData(UgcFilterRoot$FilterGroup[] arrugcFilterRoot$FilterGroup) {
        this.data = arrugcFilterRoot$FilterGroup;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
