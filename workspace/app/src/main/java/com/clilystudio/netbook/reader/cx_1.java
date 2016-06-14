package com.clilystudio.netbook.reader;

import android.database.DataSetObserver;

final class cx extends DataSetObserver {
    private /* synthetic */ ReaderViewPager a;

    private cx(ReaderViewPager readerViewPager) {
        this.a = readerViewPager;
    }

    /* synthetic */ cx(ReaderViewPager readerViewPager, byte by) {
        this(readerViewPager);
    }

    @Override
    public final void onChanged() {
        this.a.a();
    }

    @Override
    public final void onInvalidated() {
        this.a.a();
    }
}
