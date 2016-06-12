package com.clilystudio.netbook.ui.ugcbook;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

final class Y implements CompoundButton$OnCheckedChangeListener {

    private int a;
    private X b;
    Y(X X1, int int2) {
        b = X1;
        a = int2;
    }

    public final void onCheckedChanged(CompoundButton CompoundButton1, boolean boolean2) {
        if (!com.clilystudio.netbook.ui.ugcbook.X.a(b)) {
            UGCGuideSelectBookActivity.c(b.a)[a] = boolean2;
            UGCGuideSelectBookActivity.a(b.a, a);
        }
    }
}
