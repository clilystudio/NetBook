package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class l implements View$OnClickListener {

    private UGCDetailActivity a;

    l(UGCDetailActivity UGCDetailActivity1) {
        a = UGCDetailActivity1;
    }

    public final void onClick(View View1) {
        UGCDetailActivity.f(a);
    }
}
