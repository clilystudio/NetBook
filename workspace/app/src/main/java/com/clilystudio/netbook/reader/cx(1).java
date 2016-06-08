package com.clilystudio.netbook.reader;

import android.database.DataSetObserver;

final class cx extends DataSetObserver {
    private cx(ReaderViewPager paramReaderViewPager) {
    }

    public final void onChanged() {
        this.a.a();
    }

    public final void onInvalidated() {
        this.a.a();
    }
}

