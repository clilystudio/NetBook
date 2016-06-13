package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.ReaderOptionActivity;
import com.clilystudio.netbook.reader.db;

final class a
        implements db {
    private /* synthetic */ ReaderTxtActivity a;

    a(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a() {
        this.a.startActivityForResult(ReaderOptionActivity.a(this.a), 0);
    }
}
