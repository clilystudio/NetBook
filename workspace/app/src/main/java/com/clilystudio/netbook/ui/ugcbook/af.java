package com.clilystudio.netbook.ui.ugcbook;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

final class af implements View$OnKeyListener {

    private UGCMainActivity a;

    af(UGCMainActivity UGCMainActivity1) {
        a = UGCMainActivity1;
    }

    public final boolean onKey(View View1, int int2, KeyEvent KeyEvent3) {
        if (KeyEvent3.getAction() != 0 || int2 != 82 || KeyEvent3.getRepeatCount() != 0)
            return false;
        UGCMainActivity.h(a);
        return true;
    }
}
