package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.o;

final class J implements ce {
    private /* synthetic */ ReaderTxtActivity a;

    J(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a() {
        for (o o2 : ReaderTxtActivity.d(this.a)) {
            if (o2 == null) continue;
            o2.b();
        }
        ReaderTxtActivity.q(this.a);
    }
}
