package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

final class c implements View$OnKeyListener {

    private AdWebViewActivity a;

    c(AdWebViewActivity AdWebViewActivity1) {
        a = AdWebViewActivity1;
    }

    public final boolean onKey(View View1, int int2, KeyEvent KeyEvent3) {
        if (int2 != 4 || !com.clilystudio.netbook.ui.AdWebViewActivity.e(a).canGoBack())
            return false;
        AdWebViewActivity.e(a).goBack();
        return true;
    }
}
