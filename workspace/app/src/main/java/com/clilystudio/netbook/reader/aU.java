package com.clilystudio.netbook.reader;

import android.content.Context;

final class aU implements cn {
    private /* synthetic */ ReaderActivity a;

    aU(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final void a() {
        ReaderActivity.a(this.a, 2);
        ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
        ReaderActivity.o(this.a);
        ReaderActivity.p(this.a);
    }

    @Override
    public final void a(int n2) {
        ReaderActivity.q(this.a).setParameter("speed", "" + n2);
        a.b((Context) this.a, "speech_speed", n2);
    }

    @Override
    public final void a(boolean bl) {
        ReaderActivity.q(this.a).stopSpeaking();
        ReaderActivity.a(this.a, 0);
        ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
        ReaderActivity.r(this.a);
        if (bl) {
            ReaderActivity.f(this.a);
            ReaderActivity.b(this.a, 0);
            ReaderActivity.c(this.a, 0);
            ReaderActivity.d(this.a, 0);
            ReaderActivity.s(this.a);
        }
    }

    @Override
    public final void b() {
        ReaderActivity.q(this.a).pauseSpeaking();
        ReaderActivity.a(this.a, true);
    }

    @Override
    public final void c() {
        ReaderActivity.q(this.a).resumeSpeaking();
    }

    @Override
    public final void d() {
        this.a.e();
    }
}
