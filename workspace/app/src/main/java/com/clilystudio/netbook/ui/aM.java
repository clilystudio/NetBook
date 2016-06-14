package com.clilystudio.netbook.ui;

import android.view.View;

final class aM implements View.OnClickListener {
    private /* synthetic */ BookRankListActivity a;

    aM(BookRankListActivity bookRankListActivity) {
        this.a = bookRankListActivity;
    }

    @Override
    public final void onClick(View view) {
        BookRankListActivity.a(this.a);
    }
}
