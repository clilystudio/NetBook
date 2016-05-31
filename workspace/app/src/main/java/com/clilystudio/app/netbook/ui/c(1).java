package com.clilystudio.app.netbook.ui;

import android.view.KeyEvent;
import android.view.View;

final class c
        implements View.OnKeyListener {
    c(AdWebViewActivity paramAdWebViewActivity) {
    }

    public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
        if ((paramInt == 4) && (AdWebViewActivity.d_setRight(this.a).canGoBack())) {
            AdWebViewActivity.d_setRight(this.a).goBack();
            return true;
        }
        return false;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.c
 * JD-Core Version:    0.6.2
 */