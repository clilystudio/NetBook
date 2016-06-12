package com.clilystudio.netbook.reader;

import android.content.Context;

final class aJ implements dc {

    private ReaderActivity a;

    aJ(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void a() {
        ReaderActivity.f(a);
        ReaderActivity.a(a, 1);
        ReaderActivity.h(a).setReadMode(ReaderActivity.g(a));
        ReaderActivity.k(a).setTotalHeight(ReaderActivity.i(a)[ReaderActivity.j(a)].d());
        if (ReaderActivity.l(a).i())
            ReaderActivity.k(a).setText((CharSequence) ReaderActivity.m(a).a((Context) a));
        else
            ReaderActivity.k(a).setText((CharSequence) ReaderActivity.m(a).c());
        ReaderActivity.k(a).f();
        ReaderActivity.n(a);
    }
}
