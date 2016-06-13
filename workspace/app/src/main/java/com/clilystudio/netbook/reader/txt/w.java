package com.clilystudio.netbook.reader.txt;

import android.content.Context;

import com.clilystudio.netbook.reader.cn;

final class w
        implements cn {
    private /* synthetic */ ReaderTxtActivity a;

    w(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final void a() {
        ReaderTxtActivity.a(this.a, 2);
        ReaderTxtActivity.c(this.a).setReadMode(ReaderTxtActivity.b(this.a));
        ReaderTxtActivity.j(this.a);
        ReaderTxtActivity.k(this.a);
    }

    @Override
    public final void a(int n2) {
        ReaderTxtActivity.l(this.a).setParameter("speed", "" + n2);
        a.b((Context) this.a, "speech_speed", n2);
    }

    @Override
    public final void a(boolean bl) {
        ReaderTxtActivity.l(this.a).stopSpeaking();
        ReaderTxtActivity.a(this.a, 0);
        ReaderTxtActivity.c(this.a).setReadMode(ReaderTxtActivity.b(this.a));
        ReaderTxtActivity.m(this.a);
        if (bl) {
            ReaderTxtActivity.a(this.a);
            ReaderTxtActivity.b(this.a, 0);
            ReaderTxtActivity.c(this.a, 0);
            ReaderTxtActivity.d(this.a, 0);
            ReaderTxtActivity.n(this.a);
        }
    }

    @Override
    public final void b() {
        ReaderTxtActivity.l(this.a).pauseSpeaking();
        ReaderTxtActivity.a(this.a, true);
    }

    @Override
    public final void c() {
        ReaderTxtActivity.l(this.a).resumeSpeaking();
    }

    @Override
    public final void d() {
        this.a.e();
    }
}
