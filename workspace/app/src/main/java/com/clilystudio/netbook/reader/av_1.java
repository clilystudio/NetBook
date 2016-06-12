package com.clilystudio.netbook.reader;

import android.content.Context;

final class av implements db {

    private ReaderActivity a;

    av(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void a() {
        a.startActivityForResult(ReaderOptionActivity.a((Context) a), 0);
    }
}
