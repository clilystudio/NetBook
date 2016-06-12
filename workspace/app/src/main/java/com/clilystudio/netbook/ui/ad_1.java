package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class ad implements View$OnClickListener {

    private BaseLoadingFragment a;

    ad(BaseLoadingFragment BaseLoadingFragment1) {
        a = BaseLoadingFragment1;
    }

    public final void onClick(View View1) {
        a.b();
    }
}
