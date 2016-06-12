package com.clilystudio.netbook.reader.txt;

import android.content.Context;

import com.clilystudio.netbook.reader.dc;

final class l implements dc {

    private ReaderTxtActivity a;

    l(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a() {
        ReaderTxtActivity.a(a);
        ReaderTxtActivity.a(a, 1);
        ReaderTxtActivity.c(a).setReadMode(ReaderTxtActivity.b(a));
        ReaderTxtActivity.f(a).setTotalHeight(ReaderTxtActivity.d(a)[ReaderTxtActivity.e(a)].d());
        if (ReaderTxtActivity.g(a).i())
            ReaderTxtActivity.f(a).setText((CharSequence) ReaderTxtActivity.h(a).a((Context) a));
        else
            ReaderTxtActivity.f(a).setText((CharSequence) ReaderTxtActivity.h(a).c());
        ReaderTxtActivity.f(a).f();
        ReaderTxtActivity.i(a);
    }
}
