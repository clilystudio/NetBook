package com.clilystudio.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import android.widget.PopupWindow;

final class at implements View$OnTouchListener {

    private PopupWindow a;

    at(BookHelpListActivity BookHelpListActivity1, PopupWindow PopupWindow2) {
        a = PopupWindow2;
    }

    public final boolean onTouch(View View1, MotionEvent MotionEvent2) {
        if (a != null && a.isShowing())
            a.dismiss();
        return true;
    }
}
