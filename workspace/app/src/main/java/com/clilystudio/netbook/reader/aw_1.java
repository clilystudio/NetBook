package com.clilystudio.netbook.reader;

final class aw
        implements cw {
    private /* synthetic */ ReaderActivity a;

    aw(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a(int n2) {
        ReaderActivity.g(this.a, n2);
    }

    @Override
    public final void b(int n2) {
        if (n2 == 2) {
            ReaderActivity.f(this.a);
        }
        if (n2 != 0) {
            return;
        }
        ReaderActivity.S(this.a);
    }
}
