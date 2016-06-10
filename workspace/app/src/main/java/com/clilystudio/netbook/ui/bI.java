package com.clilystudio.netbook.ui;

import android.view.View;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class bI
        implements View.OnClickListener {
    bI(SearchActivity paramSearchActivity) {
    }

    public final void onClick(View paramView) {
        a.G(this.a);
        SearchActivity.e(this.a).a();
    }
}

