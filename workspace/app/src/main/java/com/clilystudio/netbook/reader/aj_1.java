package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.UmengGameTracer$From;

final class aj
        implements g {
    private /* synthetic */ ReaderActivity a;

    aj(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a() {
        ReaderActivity.a(this.a);
        ReaderActivity.b(this.a);
        ReaderActivity.c(this.a);
        this.a.a(ReaderActivity.d(this.a));
        a.q(this.a, "\u6253\u5f00\u9875\u5c3e");
        if (ReaderActivity.e(this.a) != null && ReaderActivity.e(this.a).b() != null) {
            a.q(this.a, "\u9875\u5c3e\u5e7f\u544a-" + ReaderActivity.e(this.a).b());
            new UmengGameTracer(this.a, UmengGameTracer$From.Reader).a(ReaderActivity.e(this.a).a());
        }
    }
}
