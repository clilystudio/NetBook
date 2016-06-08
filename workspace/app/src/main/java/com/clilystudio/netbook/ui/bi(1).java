package com.clilystudio.netbook.ui;

import android.view.KeyEvent;
import android.view.View;

final class bi
        implements View.OnKeyListener {
    bi(LuckyGameWebActivity paramLuckyGameWebActivity) {
    }

    public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
        if ((paramInt == 4) && (LuckyGameWebActivity.d(this.a).canGoBack())) {
            LuckyGameWebActivity.d(this.a).goBack();
            return true;
        }
        return false;
    }
}

