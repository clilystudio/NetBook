package com.clilystudio.netbook.ui.post;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

final class cK
        implements View.OnTouchListener {
    cK(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow) {
    }

    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
        if ((this.a != null) && (this.a.isShowing()))
            this.a.dismiss();
        return true;
    }
}
