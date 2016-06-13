package com.clilystudio.netbook.ui.home;

import android.view.KeyEvent;
import android.view.View;

final class c
        implements View.OnKeyListener {
    private /* synthetic */ HomeActivity a;

    c(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    @Override
    public final boolean onKey(View view, int n, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && n == 82 && keyEvent.getRepeatCount() == 0) {
            HomeActivity.d(this.a);
            return true;
        }
        return false;
    }
}
