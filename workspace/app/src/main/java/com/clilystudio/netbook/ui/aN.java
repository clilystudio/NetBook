package com.clilystudio.netbook.ui;

import android.annotation.TargetApi;

import com.clilystudio.netbook.event.k;

final class aN
        implements Runnable {
    private /* synthetic */ k a;
    private /* synthetic */ BookRankListActivity b;

    aN(BookRankListActivity bookRankListActivity, k k2) {
        this.b = bookRankListActivity;
        this.a = k2;
    }

    @TargetApi(value = 11)
    @Override
    public final void run() {
        BookRankListActivity.b(this.b).smoothScrollToPositionFromTop(this.a.a(), 0);
    }
}
