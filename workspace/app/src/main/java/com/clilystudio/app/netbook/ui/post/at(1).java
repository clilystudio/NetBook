package com.clilystudio.app.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

final class at
        implements View.OnTouchListener {
    at(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow) {
    }

    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
        if ((this.a != null) && (this.a.isShowing()))
            this.a.dismiss();
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.at
 * JD-Core Version:    0.6.2
 */