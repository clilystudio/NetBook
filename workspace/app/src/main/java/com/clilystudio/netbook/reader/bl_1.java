package com.clilystudio.netbook.reader;

final class bl
        implements ce {
    private /* synthetic */ ReaderActivity a;

    bl(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a() {
        for (o o2 : ReaderActivity.i(this.a)) {
            if (o2 == null) continue;
            o2.b();
        }
        ReaderActivity.u(this.a);
    }
}
