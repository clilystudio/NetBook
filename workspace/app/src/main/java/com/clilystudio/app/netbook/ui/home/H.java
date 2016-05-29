package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.AdsResult;

final class H extends e<Void, Void, AdsResult> {
    private H(HomeShelfFragment paramHomeShelfFragment) {
    }

    private static AdsResult a() {
        try {
            b.a();
            AdsResult localAdsResult = b.b().J("all");
            return localAdsResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.H
 * JD-Core Version:    0.6.2
 */