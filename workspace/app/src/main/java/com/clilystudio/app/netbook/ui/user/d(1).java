package com.clilystudio.app.netbook.ui.user;

import android.view.MotionEvent;
import android.view.View;

final class d
        implements View.OnTouchListener {
    d(AuthLoginActivity paramAuthLoginActivity) {
    }

    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
        if (paramMotionEvent.getAction() == 0)
            AuthLoginActivity.a(this.a, paramView);
        while (true) {
            return false;
            if (paramMotionEvent.getAction() == 1)
                paramView.clearAnimation();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.d
 * JD-Core Version:    0.6.2
 */