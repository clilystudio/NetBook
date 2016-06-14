package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;

final class c implements View.OnKeyListener {
    private /* synthetic */ AdWebViewActivity a;

    c(AdWebViewActivity adWebViewActivity) {
        this.a = adWebViewActivity;
    }

    @Override
    public final boolean onKey(View view, int n, KeyEvent keyEvent) {
        if (n == 4 && AdWebViewActivity.e(this.a).canGoBack()) {
            AdWebViewActivity.e(this.a).goBack();
            return true;
        }
        return false;
    }
}
