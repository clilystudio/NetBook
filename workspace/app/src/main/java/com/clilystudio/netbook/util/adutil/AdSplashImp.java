package com.clilystudio.netbook.util.adutil;

import android.view.MotionEvent;

import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.widget.AdContainerLayout;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.lang.reflect.InvocationHandler;

public final class AdSplashImp {
    private SplashActivity a;
    private InvocationHandler b;
    private boolean c = true;
    private l d;

    public AdSplashImp(SplashActivity splashActivity) {
        this.a = splashActivity;
    }

    static /* synthetic */ SplashActivity a(AdSplashImp adSplashImp) {
        return adSplashImp.a;
    }

    static /* synthetic */ void a(AdSplashImp adSplashImp, AdContainerLayout adContainerLayout) {
        adContainerLayout.setIsShowConfirm(false);
        adContainerLayout.dispatchTouchEvent(MotionEvent.obtain(1, 1, 0, 1.0f, 1.0f, 0));
        adContainerLayout.dispatchTouchEvent(MotionEvent.obtain(1, 1, 1, 1.0f, 1.0f, 0));
    }

    static /* synthetic */ boolean b(AdSplashImp adSplashImp) {
        return adSplashImp.c;
    }

    static /* synthetic */ l c(AdSplashImp adSplashImp) {
        return adSplashImp.d;
    }

    private void a(AdSplashImp.EventType eventType) {
        if (this.b instanceof g) {
            this.a(eventType, this.a.getResources().getStringArray(2131361806));
            return;
        }
        if (this.b instanceof l) {
            this.a(eventType, this.a.getResources().getStringArray(2131361807));
            return;
        }
        this.a(eventType, this.a.getResources().getStringArray(2131361808));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void a(AdSplashImp.EventType var1_1, String[] var2_2) {
        var3_3 = f.a[var1_1.ordinal()];
        var4_4 = null;
        switch (var3_3) {
            case 1: {
                var4_4 = var2_2[0];
                **break;
            }
            case 2: {
                var4_4 = var2_2[1];
            }
            lbl9:
            // 3 sources:
            default:
            {
                **GOTO lbl13
            }
            case 3:
        }
        var4_4 = var2_2[2];
        lbl13:
        // 2 sources:
        if (var4_4 == null) return;
        if (var4_4.length() <= 0) return;
        MiStatInterface.recordCountEvent( var4_4,null);
    }

    public final void a() {
        this.a.c();
    }

    public final void a(l l2) {
        this.d = l2;
    }

    public final void a(InvocationHandler invocationHandler) {
        this.b = invocationHandler;
    }

    public final void a(boolean bl) {
        this.c = bl;
    }

    public final void b() {
        this.a(AdSplashImp.EventType.PRESENT);
        this.a.a();
        this.a.a(3000);
        if (a.r(this.a, "ad_baidu_confirm")) {
            AdContainerLayout adContainerLayout = (AdContainerLayout) this.a.findViewById(2131493263);
            adContainerLayout.setIsShowConfirm(true);
            adContainerLayout.setSplashAdContainerClickListener(new b(this, adContainerLayout));
        }
    }

    public final void c() {
        this.a.a();
        this.a.b();
    }

    public final void d() {
        this.a(AdSplashImp.EventType.CLICK);
    }

    public final void e() {
        this.a(AdSplashImp.EventType.DOWNLOAD);
    }


    enum EventType {
        PRESENT, CLICK, DOWNLOAD;
    }

}
