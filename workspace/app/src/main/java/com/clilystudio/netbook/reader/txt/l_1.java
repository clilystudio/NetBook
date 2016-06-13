package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.dc;

final class l
        implements dc {
    private /* synthetic */ ReaderTxtActivity a;

    l(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a() {
        ReaderTxtActivity.a(this.a);
        ReaderTxtActivity.a(this.a, 1);
        ReaderTxtActivity.c(this.a).setReadMode(ReaderTxtActivity.b(this.a));
        ReaderTxtActivity.f(this.a).setTotalHeight(ReaderTxtActivity.d(this.a)[ReaderTxtActivity.e(this.a)].d());
        if (ReaderTxtActivity.g(this.a).i()) {
            ReaderTxtActivity.f(this.a).setText(ReaderTxtActivity.h(this.a).a(this.a));
        } else {
            ReaderTxtActivity.f(this.a).setText(ReaderTxtActivity.h(this.a).c());
        }
        ReaderTxtActivity.f(this.a).f();
        ReaderTxtActivity.i(this.a);
    }
}
