package com.clilystudio.netbook.model;

public class AdsResult {
    private AdvertData[] adverts;
    private boolean ok;

    public AdvertData[] getAdverts() {
        return this.adverts;
    }

    public void setAdverts(AdvertData[] arradvertData) {
        this.adverts = arradvertData;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
