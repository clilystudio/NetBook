package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnFocusChangeListener;

final class bL implements View$OnFocusChangeListener {

    private SearchActivity a;

    bL(SearchActivity SearchActivity1) {
        a = SearchActivity1;
    }

    public final void onFocusChange(View View1, boolean boolean2) {
        SearchActivity SearchActivity3 = a;
        boolean boolean4;

        if (!com.clilystudio.netbook.hpay100.a.a.Q(SearchActivity.f(a).getText().toString()))
            boolean4 = true;
        else
            boolean4 = false;
        SearchActivity.a(SearchActivity3, boolean4);
    }
}
