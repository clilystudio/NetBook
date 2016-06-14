package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.am;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.RecommendInfo;
import com.clilystudio.netbook.model.ResultServer;

final class j extends e<String, Void, ResultServer> {
    private /* synthetic */ HomeActivity a;

    j(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        if ("000000000000000".equals(am.t(this.a))) {
            return null;
        }
        boolean bl = false;
        if (bl) {
            return null;
        }
        RecommendInfo recommendInfo = RecommendInfo.getInfoFromJson(HomeActivity.g(this.a));
        String string = "";
        String string2 = "";
        if (recommendInfo != null) {
            string = recommendInfo.getRecommended();
            string2 = recommendInfo.getOp();
        }
        String string3 = am.t(this.a);
        HomeActivity.h(this.a);
        return b.b().p(string3, string, string2);
    }
}
