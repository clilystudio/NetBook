package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class ag implements View$OnClickListener {

    private UGCMainActivity a;

    ag(UGCMainActivity UGCMainActivity1) {
        a = UGCMainActivity1;
    }

    public final void onClick(View View1) {
        UGCMainActivity.i(a);
    }
}
