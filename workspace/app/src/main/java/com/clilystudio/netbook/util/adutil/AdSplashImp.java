package com.clilystudio.netbook.util.adutil;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.widget.AdContainerLayout;

import java.lang.reflect.InvocationHandler;

public final class AdSplashImp {
    private SplashActivity a;
    private InvocationHandler b;
    private boolean c = true;
    private l d;

    public AdSplashImp(SplashActivity paramSplashActivity) {
        this.a = paramSplashActivity;
    }

    private void a(AdSplashImp.EventType paramEventType) {
        if ((this.b instanceof g)) {
            a(paramEventType, this.a.getResources().getStringArray(2131361806));
            return;
        }
        if ((this.b instanceof l)) {
            a(paramEventType, this.a.getResources().getStringArray(2131361807));
            return;
        }
        a(paramEventType, this.a.getResources().getStringArray(2131361808));
    }

    private void a(AdSplashImp.EventType paramEventType, String[] paramArrayOfString) {
        int i = f.a[paramEventType.ordinal()];
        String str = null;
        switch (i) {
            default:
            case 1:
            case 2:
            case 3:
        }
        while (true) {
            if ((str != null) && (str.length() > 0))
                com.umeng.a.b.a(this.a, str);
            return;
            str = paramArrayOfString[0];
            continue;
            str = paramArrayOfString[1];
            continue;
            str = paramArrayOfString[2];
        }
    }

    public final void a() {
        this.a.c();
    }

    public final void a(l paraml) {
        this.d = paraml;
    }

    public final void a(InvocationHandler paramInvocationHandler) {
        this.b = paramInvocationHandler;
    }

    public final void a(boolean paramBoolean) {
        this.c = paramBoolean;
    }

    public final void b() {
        a(AdSplashImp.EventType.PRESENT);
        this.a.a();
        this.a.a(3000L);
        if (a.r(this.a, "ad_baidu_confirm")) {
            AdContainerLayout localAdContainerLayout = (AdContainerLayout) this.a.findViewById(2131493263);
            localAdContainerLayout.setIsShowConfirm(true);
            localAdContainerLayout.setSplashAdContainerClickListener(new b(this, localAdContainerLayout));
        }
    }

    public final void c() {
        this.a.a();
        this.a.b();
    }

    public final void d() {
        a(AdSplashImp.EventType.CLICK);
    }

    public final void e() {
        a(AdSplashImp.EventType.DOWNLOAD);
    }

    enum EventType {
        PRESENT, CLICK, DOWNLOAD;
    }
}

