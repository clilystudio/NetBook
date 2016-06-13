package com.clilystudio.netbook.ui;

import android.view.View;

final class bI
        implements View.OnClickListener {
    private /* synthetic */ SearchActivity a;

    bI(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    @Override
    public final void onClick(View view) {
        a.G(this.a);
        SearchActivity.e(this.a).a();
    }
}
