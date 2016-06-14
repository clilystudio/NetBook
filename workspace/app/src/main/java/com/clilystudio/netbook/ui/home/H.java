package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.AdsResult;
import com.clilystudio.netbook.model.AdvertData;
import com.clilystudio.netbook.util.c;

final class H extends e<Void, Void, AdsResult> {
    private /* synthetic */ HomeShelfFragment a;

    private H(HomeShelfFragment homeShelfFragment) {
        this.a = homeShelfFragment;
    }

    /* synthetic */ H(HomeShelfFragment homeShelfFragment, byte by) {
        this(homeShelfFragment);
    }

    private static /* varargs */ AdsResult a() {
        try {
            b.a();
            AdsResult adsResult = b.b().J("all");
            return adsResult;
        } catch (Exception var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        AdsResult adsResult = (AdsResult) object;
        super.onPostExecute(adsResult);
        if (this.a.getActivity() == null) return;
        if (adsResult == null) return;
        if (!adsResult.isOk()) {
            return;
        }
        AdvertData[] arradvertData = adsResult.getAdverts();
        if (!c.a().a(arradvertData)) return;
        HomeShelfFragment.l(this.a);
    }
}
