package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.o;

final class L implements cd {
    private /* synthetic */ ReaderTxtActivity a;

    L(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a() {
        for (o o2 : ReaderTxtActivity.d(this.a)) {
            if (o2 == null) continue;
            o2.c();
        }
        ReaderTxtActivity.q(this.a);
    }
}
