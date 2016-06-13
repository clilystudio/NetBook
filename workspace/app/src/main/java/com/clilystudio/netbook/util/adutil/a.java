package com.clilystudio.netbook.util.adutil;

import android.view.View;

import java.lang.reflect.InvocationHandler;

public abstract class a
        implements InvocationHandler {
    AdSplashImp a;

    public a(AdSplashImp adSplashImp) {
        this.a = adSplashImp;
        this.a.a(this);
    }

    public abstract boolean a(View var1);
}
