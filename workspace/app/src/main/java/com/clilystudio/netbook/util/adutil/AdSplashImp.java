package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.MotionEvent;

import com.clilystudio.netbook.ui.SplashActivity;
import com.clilystudio.netbook.widget.AdContainerLayout;

public final class AdSplashImp {

    private SplashActivity a;
    private reflect.InvocationHandler b;
    private l d;
    private boolean c = true;
    public AdSplashImp(SplashActivity SplashActivity1) {
        a = SplashActivity1;
    }

    static SplashActivity a(AdSplashImp AdSplashImp1) {
        return AdSplashImp1.a;
    }

    static void a(AdSplashImp AdSplashImp1, AdContainerLayout AdContainerLayout2) {
        AdContainerLayout2.setIsShowConfirm(false);
        AdContainerLayout2.dispatchTouchEvent(MotionEvent.obtain(1L, 1L, 0, 1.0F, 1.0F, 0));
        AdContainerLayout2.dispatchTouchEvent(MotionEvent.obtain(1L, 1L, 1, 1.0F, 1.0F, 0));
    }

    static boolean b(AdSplashImp AdSplashImp1) {
        return AdSplashImp1.c;
    }

    static l c(AdSplashImp AdSplashImp1) {
        return AdSplashImp1.d;
    }

    private void a(AdSplashImp$EventType EventType1) {
        if (b instanceof g)
            a(EventType1, a.getResources().getStringArray(2131361806));
        else if (b instanceof l)
            a(EventType1, a.getResources().getStringArray(2131361807));
        else
            a(EventType1, a.getResources().getStringArray(2131361808));
    }

    private void a(AdSplashImp$EventType EventType1, String[] String_1darray2) {
        int int3 = f.a[EventType1.ordinal()];
        String String4 = null;

        switch (int3) {
            case 1:
                String4 = String_1darray2[0];
                break;
            case 2:
                String4 = String_1darray2[1];
                break;
            case 3:
                String4 = String_1darray2[2];
                break;
            default:
                break;
        }
        if (String4 != null && String4.length() > 0)
            com.clilystudio.netbook.umeng.a.b.a((Context) a, String4);
    }

    public final void a() {
        a.c();
    }

    public final void a(l l1) {
        d = l1;
    }

    public final void a(reflect.InvocationHandler InvocationHandler1) {
        b = InvocationHandler1;
    }

    public final void a(boolean boolean1) {
        c = boolean1;
    }

    public final void b() {
        a(AdSplashImp$EventType.PRESENT);
        a.a();
        a.a(3000L);
        if (com.clilystudio.netbook.hpay100.a.a.r((Context) a, "ad_baidu_confirm")) {
            AdContainerLayout AdContainerLayout1 = (AdContainerLayout) a.findViewById(2131493263);

            AdContainerLayout1.setIsShowConfirm(true);
            AdContainerLayout1.setSplashAdContainerClickListener((com.clilystudio.netbook.widget.f) new b(this, AdContainerLayout1));
        }
    }

    public final void c() {
        a.a();
        a.b();
    }

    public final void d() {
        a(AdSplashImp$EventType.CLICK);
    }

    public final void e() {
        a(AdSplashImp$EventType.DOWNLOAD);
    }
}
