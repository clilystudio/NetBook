package com.clilystudio.netbook.reader;

import android.content.Context;

final class aJ
        implements dc {
    private /* synthetic */ ReaderActivity a;

    aJ(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a() {
        ReaderActivity.f(this.a);
        ReaderActivity.a(this.a, 1);
        ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
        ReaderActivity.k(this.a).setTotalHeight(ReaderActivity.i(this.a)[ReaderActivity.j(this.a)].d());
        if (ReaderActivity.l(this.a).i()) {
            ReaderActivity.k(this.a).setText(ReaderActivity.m(this.a).a((Context) this.a));
        } else {
            ReaderActivity.k(this.a).setText(ReaderActivity.m(this.a).c());
        }
        ReaderActivity.k(this.a).f();
        ReaderActivity.n(this.a);
    }
}
