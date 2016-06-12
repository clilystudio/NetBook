package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.event.k;

final class aN implements Runnable {

    private k a;
    private BookRankListActivity b;
    aN(BookRankListActivity BookRankListActivity1, k k2) {
        b = BookRankListActivity1;
        a = k2;
    }

    public final void run() {
        BookRankListActivity.b(b).smoothScrollToPositionFromTop(a.a(), 0);
    }
}
