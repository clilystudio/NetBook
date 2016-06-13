package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cw;

final class j
        implements cw {
    private /* synthetic */ ReaderTxtActivity a;

    j(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a(int n2) {
        ReaderTxtActivity.f(this.a, n2);
    }

    @Override
    public final void b(int n2) {
        if (n2 == 2) {
            ReaderTxtActivity.a(this.a);
        }
        if (n2 != 0) {
            return;
        }
        ReaderTxtActivity.E(this.a);
    }
}
