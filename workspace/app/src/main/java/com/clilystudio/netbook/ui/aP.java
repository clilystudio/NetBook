package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View$OnClickListener;

final class aP implements View$OnClickListener {

    private BookRankListFragment a;

    aP(BookRankListFragment BookRankListFragment1) {
        a = BookRankListFragment1;
    }

    public final void onClick(View View1) {
        BookRankListFragment.a(a);
    }
}
