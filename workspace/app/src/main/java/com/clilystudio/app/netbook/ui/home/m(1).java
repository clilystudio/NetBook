package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UshaqiOnlineConfig;

final class m extends e<Void, Void, UshaqiOnlineConfig> {
    private m(HomeParentActivity paramHomeParentActivity) {
    }

    private UshaqiOnlineConfig a() {
        try {
            UshaqiOnlineConfig localUshaqiOnlineConfig = b.b().a();
            return localUshaqiOnlineConfig;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.m
 * JD-Core Version:    0.6.2
 */