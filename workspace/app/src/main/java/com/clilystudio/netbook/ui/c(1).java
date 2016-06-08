package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;

final class c
        implements View.OnKeyListener {
    c(AdWebViewActivity paramAdWebViewActivity) {
    }

    public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
        if ((paramInt == 4) && (AdWebViewActivity.e(this.a).canGoBack())) {
            AdWebViewActivity.e(this.a).goBack();
            return true;
        }
        return false;
    }
}

