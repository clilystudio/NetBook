package com.clilystudio.netbook.model;

public class UgcFilterRoot {
    private UgcFilterRoot.FilterGroup[] data;
    private boolean ok;

    public UgcFilterRoot.FilterGroup[] getData() {
        return this.data;
    }

    public void setData(UgcFilterRoot.FilterGroup[] paramArrayOfFilterGroup) {
        this.data = paramArrayOfFilterGroup;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

