package com.clilystudio.netbook.reader;

final class aJ
        implements dc {
    aJ(ReaderActivity paramReaderActivity) {
    }

    public final void a() {
        ReaderActivity.f(this.a);
        ReaderActivity.a(this.a, 1);
        ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
        ReaderActivity.k(this.a).setTotalHeight(ReaderActivity.i(this.a)[ReaderActivity.j(this.a)].d());
        if (ReaderActivity.l(this.a).i())
            ReaderActivity.k(this.a).setText(ReaderActivity.m(this.a).a(this.a));
        while (true) {
            ReaderActivity.k(this.a).f();
            ReaderActivity.n(this.a);
            return;
            ReaderActivity.k(this.a).setText(ReaderActivity.m(this.a).c());
        }
    }
}

