package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnClickListener;

final class R implements View$OnClickListener {

    private int a;
    private Q b;
    R(Q Q1, int int2) {
        b = Q1;
        a = int2;
    }

    public final void onClick(View View1) {
        UGCGuideEditBooksActivity.a(b.a, a);
    }
}
