package com.clilystudio.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

final class cZ implements View.OnTouchListener {
    private /* synthetic */ PopupWindow a;

    cZ(ReviewListActivity reviewListActivity, PopupWindow popupWindow) {
        this.a = popupWindow;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.a != null && this.a.isShowing()) {
            this.a.dismiss();
        }
        return true;
    }
}
