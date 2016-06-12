package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class X implements View$OnClickListener {

    private BaseActivity a;

    X(BaseActivity BaseActivity1) {
        a = BaseActivity1;
    }

    public final void onClick(View View1) {
        a.onBackPressed();
    }
}
