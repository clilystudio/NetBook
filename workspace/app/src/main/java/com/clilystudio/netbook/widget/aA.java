package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View$OnClickListener;

final class aA implements View$OnClickListener {

    private ShareWarningView a;

    aA(ShareWarningView ShareWarningView1) {
        a = ShareWarningView1;
    }

    public final void onClick(View View1) {
        if (ShareWarningView.a(a) != null)
            ShareWarningView.a(a).a();
    }
}
