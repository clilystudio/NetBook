package com.clilystudio.netbook.reader;

import android.database.DataSetObserver;

final class cx extends DataSetObserver {

    private ReaderViewPager a;

    cx(ReaderViewPager ReaderViewPager1, byte byte2) {
        this(ReaderViewPager1);
    }

    private cx(ReaderViewPager ReaderViewPager1) {
        a = ReaderViewPager1;
    }

    public final void onChanged() {
        a.a();
    }

    public final void onInvalidated() {
        a.a();
    }
}
