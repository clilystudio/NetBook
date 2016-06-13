package com.clilystudio.netbook.reader;

final class bn
        implements cd {
    private /* synthetic */ ReaderActivity a;

    bn(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a() {
        for (o o2 : ReaderActivity.i(this.a)) {
            if (o2 == null) continue;
            o2.c();
        }
        ReaderActivity.u(this.a);
    }
}
