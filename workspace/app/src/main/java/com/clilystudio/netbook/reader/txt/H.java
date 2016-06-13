package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cc;
import com.clilystudio.netbook.reader.o;

final class H
        implements cc {
    private /* synthetic */ ReaderTxtActivity a;

    H(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a() {
        o[] arro = ReaderTxtActivity.d(this.a);
        int n2 = arro.length;
        for (int i = 0; i < n2; ++i) {
            arro[i].a();
        }
        ReaderTxtActivity.o(this.a);
        ReaderTxtActivity.p(this.a);
    }
}
