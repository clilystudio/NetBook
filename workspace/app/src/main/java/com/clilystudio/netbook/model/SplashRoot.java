package com.clilystudio.netbook.model;

public class SplashRoot {
    private boolean ok;
    private Splash[] splash;

    public Splash[] getSplash() {
        return this.splash;
    }

    public void setSplash(Splash[] paramArrayOfSplash) {
        this.splash = paramArrayOfSplash;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

