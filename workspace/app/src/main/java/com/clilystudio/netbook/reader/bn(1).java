package com.clilystudio.netbook.reader;

final class bn
        implements cd {
    bn(ReaderActivity paramReaderActivity) {
    }

    public final void a() {
        for (o localo : ReaderActivity.i(this.a)) {
            if (localo == null)
                continue;
            localo.c();
        }
        ReaderActivity.u(this.a);
    }
}
