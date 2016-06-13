package com.clilystudio.netbook.model;

public class SplashRoot {
    private boolean ok;
    private Splash[] splash;

    public Splash[] getSplash() {
        return this.splash;
    }

    public void setSplash(Splash[] arrsplash) {
        this.splash = arrsplash;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
