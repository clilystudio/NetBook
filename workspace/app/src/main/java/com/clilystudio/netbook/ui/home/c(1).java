package com.clilystudio.netbook.ui.home;

import android.view.KeyEvent;
import android.view.View;

final class c
        implements View.OnKeyListener {
    c(HomeActivity paramHomeActivity) {
    }

    public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
        if ((paramKeyEvent.getAction() == 0) && (paramInt == 82) && (paramKeyEvent.getRepeatCount() == 0)) {
            HomeActivity.d(this.a);
            return true;
        }
        return false;
    }
}

