package com.clilystudio.netbook.ui;

import android.view.MotionEvent;
import android.view.View;

final class bF
        implements View.OnTouchListener {
    bF(SearchActivity paramSearchActivity) {
    }

    public final boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
        SearchActivity.c(this.a);
        return false;
    }
}

