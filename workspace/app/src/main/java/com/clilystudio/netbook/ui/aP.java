package com.clilystudio.netbook.ui;

import android.view.View;

final class aP
        implements View.OnClickListener {
    private /* synthetic */ BookRankListFragment a;

    aP(BookRankListFragment bookRankListFragment) {
        this.a = bookRankListFragment;
    }

    @Override
    public final void onClick(View view) {
        BookRankListFragment.a(this.a);
    }
}
