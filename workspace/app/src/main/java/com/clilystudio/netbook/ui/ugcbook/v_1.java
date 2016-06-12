package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View$OnFocusChangeListener;

final class v implements View$OnFocusChangeListener {

    private UGCGuideAddBookActivity a;

    v(UGCGuideAddBookActivity UGCGuideAddBookActivity1) {
        a = UGCGuideAddBookActivity1;
    }

    public final void onFocusChange(View View1, boolean boolean2) {
        UGCGuideAddBookActivity UGCGuideAddBookActivity3 = a;
        boolean boolean4;

        if (!com.clilystudio.netbook.hpay100.a.a.Q(UGCGuideAddBookActivity.a(a).getText().toString()))
            boolean4 = true;
        else
            boolean4 = false;
        UGCGuideAddBookActivity.c(UGCGuideAddBookActivity3, boolean4);
    }
}
