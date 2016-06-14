package com.clilystudio.netbook.reader.dl;

import com.clilystudio.netbook.db.BookReadRecord;

final class b implements d {
    private /* synthetic */ BookReadRecord a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ a d;

    b(a a2, BookReadRecord bookReadRecord, int n, int n2) {
        this.d = a2;
        this.a = bookReadRecord;
        this.b = n;
        this.c = n2;
    }

    @Override
    public final void a() {
        a.a(this.d, this.a, this.b, this.c);
    }
}
