package com.clilystudio.netbook.ui;

import android.view.MotionEvent;
import android.view.View;

final class bF
        implements View.OnTouchListener {
    private /* synthetic */ SearchActivity a;

    bF(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        SearchActivity.c(this.a);
        return false;
    }
}
