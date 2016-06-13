package com.clilystudio.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.view.View;

final class af
        implements View.OnKeyListener {
    private /* synthetic */ UGCMainActivity a;

    af(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    @Override
    public final boolean onKey(View view, int n, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && n == 82 && keyEvent.getRepeatCount() == 0) {
            UGCMainActivity.h(this.a);
            return true;
        }
        return false;
    }
}
