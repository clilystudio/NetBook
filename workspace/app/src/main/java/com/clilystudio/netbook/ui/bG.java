package com.clilystudio.netbook.ui;

import android.view.View;

final class bG
        implements View.OnClickListener {
    private /* synthetic */ SearchActivity a;

    bG(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    @Override
    public final void onClick(View view) {
        SearchActivity.d(this.a);
        b.a(this.a, "search_history_clear");
    }
}
