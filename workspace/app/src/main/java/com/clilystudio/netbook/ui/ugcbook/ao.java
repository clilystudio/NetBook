package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class ao implements View$OnClickListener {

    private an a;

    ao(an an1, ak ak2) {
        a = an1;
    }

    public final void onClick(View View1) {
        if (a.j != null) {
            a.k.a = false;
            UGCMainActivity.a(a.k.c, a.j);
            a.k.c(0);
        }
    }
}
