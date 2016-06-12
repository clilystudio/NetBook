package com.clilystudio.netbook.ui;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

final class bF implements View$OnTouchListener {

    private SearchActivity a;

    bF(SearchActivity SearchActivity1) {
        a = SearchActivity1;
    }

    public final boolean onTouch(View View1, MotionEvent MotionEvent2) {
        SearchActivity.c(a);
        return false;
    }
}
