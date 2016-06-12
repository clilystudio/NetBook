package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.AdsResult;
import com.clilystudio.netbook.model.AdvertData;
import com.clilystudio.netbook.util.c;

final class H extends e {

    private HomeShelfFragment a;

    H(HomeShelfFragment HomeShelfFragment1, byte byte2) {
        this(HomeShelfFragment1);
    }

    private H(HomeShelfFragment HomeShelfFragment1) {
        a = HomeShelfFragment1;
    }

    private static transient AdsResult a() {
        AdsResult AdsResult3;

        try {
            com.clilystudio.netbook.api.b.a();
            AdsResult3 = com.clilystudio.netbook.api.b.b().J("all");
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return AdsResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (AdsResult) Object1;

        super.onPostExecute(Object2);
        if (a.getActivity() != null && Object2 != null && ((AdsResult) Object2).isOk()) {
            AdvertData[] AdvertData_1darray3 = ((AdsResult) Object2).getAdverts();

            if (c.a().a(AdvertData_1darray3)) {
                HomeShelfFragment.l(a);
                return;
            }
        }
    }
}
