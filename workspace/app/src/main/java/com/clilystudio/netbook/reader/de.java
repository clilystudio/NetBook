package com.clilystudio.netbook.reader;

import android.view.KeyEvent;
import android.view.View;

final class de
        implements View.OnKeyListener {
    de(WebPageFragment paramWebPageFragment) {
    }

    public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
        if ((paramInt == 4) && (WebPageFragment.d(this.a).canGoBack())) {
            WebPageFragment.d(this.a).goBack();
            return true;
        }
        return false;
    }
}

