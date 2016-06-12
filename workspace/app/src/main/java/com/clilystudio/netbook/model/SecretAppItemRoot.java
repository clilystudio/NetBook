package com.clilystudio.netbook.model;

public class SecretAppItemRoot {

    private boolean ok;
    private AppItem[] apps = new AppItem[0];

    public AppItem[] getApps() {
        return apps;
    }

    public void setApps(AppItem[] AppItem_1darray1) {
        apps = AppItem_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
