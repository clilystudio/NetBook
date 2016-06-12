package com.clilystudio.netbook.ui.user;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

final class d implements View$OnTouchListener {

    private AuthLoginActivity a;

    d(AuthLoginActivity AuthLoginActivity1) {
        a = AuthLoginActivity1;
    }

    public final boolean onTouch(View View1, MotionEvent MotionEvent2) {
        if (MotionEvent2.getAction() == 0)
            AuthLoginActivity.a(a, View1);
        else if (MotionEvent2.getAction() == 1)
            View1.clearAnimation();
        return false;
    }
}
