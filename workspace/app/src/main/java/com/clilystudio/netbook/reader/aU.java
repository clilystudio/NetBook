package com.clilystudio.netbook.reader;

import android.content.Context;

final class aU implements cn {

    private ReaderActivity a;

    aU(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void a() {
        ReaderActivity.a(a, 2);
        ReaderActivity.h(a).setReadMode(ReaderActivity.g(a));
        ReaderActivity.o(a);
        ReaderActivity.p(a);
    }

    public final void a(int int1) {
        ReaderActivity.q(a).setParameter("speed", new StringBuilder().append(int1).toString());
        com.clilystudio.netbook.hpay100.a.a.b((Context) a, "speech_speed", int1);
    }

    public final void a(boolean boolean1) {
        ReaderActivity.q(a).stopSpeaking();
        ReaderActivity.a(a, 0);
        ReaderActivity.h(a).setReadMode(ReaderActivity.g(a));
        ReaderActivity.r(a);
        if (boolean1) {
            ReaderActivity.f(a);
            ReaderActivity.b(a, 0);
            ReaderActivity.c(a, 0);
            ReaderActivity.d(a, 0);
            ReaderActivity.s(a);
        }
    }

    public final void b() {
        ReaderActivity.q(a).pauseSpeaking();
        ReaderActivity.a(a, true);
    }

    public final void c() {
        ReaderActivity.q(a).resumeSpeaking();
    }

    public final void d() {
        a.e();
    }
}
