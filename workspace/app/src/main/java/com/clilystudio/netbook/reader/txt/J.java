package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.o;

final class J
        implements ce {
    J(ReaderTxtActivity paramReaderTxtActivity) {
    }

    public final void a() {
        for (o localo : ReaderTxtActivity.d(this.a)) {
            if (localo == null)
                continue;
            localo.b();
        }
        ReaderTxtActivity.q(this.a);
    }
}

