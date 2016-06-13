package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.model.ChapterLink;

final class aH
        implements af {
    private /* synthetic */ int a;
    private /* synthetic */ ReaderActivity b;

    aH(ReaderActivity readerActivity, int n) {
        this.b = readerActivity;
        this.a = n;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final void a() {
        ReaderActivity.P(this.b);
        ChapterLink[] arrchapterLink = ReaderActivity.Y(this.b).d();
        if (arrchapterLink == null) return;
        if (this.a < arrchapterLink.length) {
            ReaderActivity.h(this.b, arrchapterLink.length);
            return;
        }
        this.b.h_();
    }

    public final void b() {
        ReaderActivity.P(this.b);
    }
}
