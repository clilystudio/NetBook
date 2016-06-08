package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.AdsResult;

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

