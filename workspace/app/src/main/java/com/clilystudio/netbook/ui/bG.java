package com.clilystudio.netbook.ui;

import android.view.View;

final class bG
        implements View.OnClickListener {
    bG(SearchActivity paramSearchActivity) {
    }

    public final void onClick(View paramView) {
        SearchActivity.d(this.a);
        b.a(this.a, "search_history_clear");
    }
}

