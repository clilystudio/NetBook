package com.clilystudio.netbook.ui;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;

import com.umeng.a.b;

final class bG implements View$OnClickListener {

    private SearchActivity a;

    bG(SearchActivity SearchActivity1) {
        a = SearchActivity1;
    }

    public final void onClick(View View1) {
        SearchActivity.d(a);
        b.a((Context) a, "search_history_clear");
    }
}
