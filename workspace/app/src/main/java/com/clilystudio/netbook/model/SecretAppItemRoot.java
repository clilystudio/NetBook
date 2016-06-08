package com.clilystudio.netbook.model;

public class SecretAppItemRoot {
    private AppItem[] apps = new AppItem[0];
    private boolean ok;

    public AppItem[] getApps() {
        return this.apps;
    }

    public void setApps(AppItem[] paramArrayOfAppItem) {
        this.apps = paramArrayOfAppItem;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

