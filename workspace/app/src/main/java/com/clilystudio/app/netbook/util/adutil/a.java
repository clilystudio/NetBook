package com.clilystudio.app.netbook.util.adutil;

import android.view.View;

import java.lang.reflect.InvocationHandler;

public abstract class a
        implements InvocationHandler {
    AdSplashImp a;

    public a(AdSplashImp paramAdSplashImp) {
        this.a = paramAdSplashImp;
        this.a.a(this);
    }

    public abstract boolean a(View paramView);
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.a
 * JD-Core Version:    0.6.2
 */