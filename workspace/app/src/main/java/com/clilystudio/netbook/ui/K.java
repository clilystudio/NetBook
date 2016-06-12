package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class K implements View$OnClickListener {

    private BaseActivity a;

    K(BaseActivity BaseActivity1) {
        a = BaseActivity1;
    }

    public final void onClick(View View1) {
        a.onBackPressed();
    }
}
