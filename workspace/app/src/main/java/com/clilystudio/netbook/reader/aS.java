package com.clilystudio.netbook.reader;

import java.util.LinkedList;

final class aS implements e<n> {
    private /* synthetic */ ReaderActivity a;

    aS(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        Object[] arrobject;
        n n2 = (n) object;
        ReaderActivity.a(this.a, n2);
        if (ReaderActivity.g(this.a) == 2 && n2 != null && (arrobject = n2.d()) != null) {
            ReaderActivity.a(this.a, (String[]) arrobject[0]);
            ReaderActivity.a(this.a, (LinkedList) arrobject[1]);
            ReaderActivity.c(this.a, false);
        }
    }
}
