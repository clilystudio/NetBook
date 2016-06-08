package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UshaqiOnlineConfig;

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

