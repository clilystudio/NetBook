package com.clilystudio.netbook.ui;

import android.view.View;

import com.arcsoft.hpay100.a.a;

final class bL
        implements View.OnFocusChangeListener {
    bL(SearchActivity paramSearchActivity) {
    }

    public final void onFocusChange(View paramView, boolean paramBoolean) {
        SearchActivity localSearchActivity = this.a;
        if (!a.Q(SearchActivity.f(this.a).getText().toString())) ;
        for (boolean bool = true; ; bool = false) {
            SearchActivity.a(localSearchActivity, bool);
            return;
        }
    }
}

