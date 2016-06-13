package com.clilystudio.netbook.model;

public class SecretAppItemRoot {
    private AppItem[] apps = new AppItem[0];
    private boolean ok;

    public AppItem[] getApps() {
        return this.apps;
    }

    public void setApps(AppItem[] arrappItem) {
        this.apps = arrappItem;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
