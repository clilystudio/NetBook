package com.clilystudio.netbook.model;

public class AdsResult {
    private AdvertData[] adverts;
    private boolean ok;

    public AdvertData[] getAdverts() {
        return this.adverts;
    }

    public void setAdverts(AdvertData[] paramArrayOfAdvertData) {
        this.adverts = paramArrayOfAdvertData;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

