package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class ac implements View$OnClickListener {

    private BaseLoadingActivity a;

    ac(BaseLoadingActivity BaseLoadingActivity1) {
        a = BaseLoadingActivity1;
    }

    public final void onClick(View View1) {
        a.b();
    }
}
