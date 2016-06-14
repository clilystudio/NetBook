package com.clilystudio.netbook.ui.user;

import android.view.MotionEvent;
import android.view.View;

final class d implements View.OnTouchListener {
    private /* synthetic */ AuthLoginActivity a;

    d(AuthLoginActivity authLoginActivity) {
        this.a = authLoginActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            AuthLoginActivity.a(this.a, view);
            return false;
        }
        if (motionEvent.getAction() != 1) return false;
        view.clearAnimation();
        return false;
    }
}
