package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UshaqiOnlineConfig;

final class m
        extends e<Void, Void, UshaqiOnlineConfig> {
    private /* synthetic */ HomeParentActivity a;

    private m(HomeParentActivity homeParentActivity) {
        this.a = homeParentActivity;
    }

    /* synthetic */ m(HomeParentActivity homeParentActivity, byte by) {
        this(homeParentActivity);
    }

    private /* varargs */ UshaqiOnlineConfig a() {
        try {
            UshaqiOnlineConfig ushaqiOnlineConfig = b.b().a();
            return ushaqiOnlineConfig;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UshaqiOnlineConfig ushaqiOnlineConfig = (UshaqiOnlineConfig) object;
        super.onPostExecute(ushaqiOnlineConfig);
        if (ushaqiOnlineConfig != null && ushaqiOnlineConfig.isServerError()) {
            HomeParentActivity.a(this.a, ushaqiOnlineConfig.getServerError());
        }
    }
}
