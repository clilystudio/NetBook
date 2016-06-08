package com.clilystudio.netbook.ui;

import android.annotation.TargetApi;

import com.clilystudio.netbook.event.k;

final class aN
        implements Runnable {
    aN(BookRankListActivity paramBookRankListActivity, k paramk) {
    }

    @TargetApi(11)
    public final void run() {
        BookRankListActivity.b(this.b).smoothScrollToPositionFromTop(this.a.a(), 0);
    }
}

