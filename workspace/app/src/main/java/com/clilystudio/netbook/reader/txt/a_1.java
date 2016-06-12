package com.clilystudio.netbook.reader.txt;

import android.content.Context;

import com.clilystudio.netbook.reader.ReaderOptionActivity;
import com.clilystudio.netbook.reader.db;

final class a implements db {

    private ReaderTxtActivity a;

    a(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a() {
        a.startActivityForResult(ReaderOptionActivity.a((Context) a), 0);
    }
}
