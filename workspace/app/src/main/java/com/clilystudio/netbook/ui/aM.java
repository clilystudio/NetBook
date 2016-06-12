package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aM implements View$OnClickListener {

    private BookRankListActivity a;

    aM(BookRankListActivity BookRankListActivity1) {
        a = BookRankListActivity1;
    }

    public final void onClick(View View1) {
        BookRankListActivity.a(a);
    }
}
