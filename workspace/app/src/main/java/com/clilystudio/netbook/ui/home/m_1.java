package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.UshaqiOnlineConfig;

final class m extends e {

    private HomeParentActivity a;

    m(HomeParentActivity HomeParentActivity1, byte byte2) {
        this(HomeParentActivity1);
    }

    private m(HomeParentActivity HomeParentActivity1) {
        a = HomeParentActivity1;
    }

    private transient UshaqiOnlineConfig a() {
        UshaqiOnlineConfig UshaqiOnlineConfig2;

        try {
            UshaqiOnlineConfig2 = com.clilystudio.netbook.api.b.b().a();
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return UshaqiOnlineConfig2;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (UshaqiOnlineConfig) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((UshaqiOnlineConfig) Object2).isServerError())
            HomeParentActivity.a(a, ((UshaqiOnlineConfig) Object2).getServerError());
    }
}
