package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

final class bO implements View$OnClickListener {

    private bM a;

    bO(bM bM1) {
        a = bM1;
    }

    public final void onClick(View View1) {
        com.clilystudio.netbook.hpay100.a.a.G((Context) a.a);
        SearchActivity.e(a.a).a();
    }
}
