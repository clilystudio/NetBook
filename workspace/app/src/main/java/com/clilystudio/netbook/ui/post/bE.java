package com.clilystudio.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

final class bE implements View.OnTouchListener {
    private /* synthetic */ PopupWindow a;

    bE(GirlTopicListActivity girlTopicListActivity, PopupWindow popupWindow) {
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
