package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

import java.util.LinkedList;

final class t
        implements e<n> {
    private /* synthetic */ ReaderTxtActivity a;

    t(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        Object[] arrobject;
        n n2 = (n) object;
        ReaderTxtActivity.a(this.a, n2);
        if (ReaderTxtActivity.b(this.a) == 2 && n2 != null && (arrobject = n2.d()) != null) {
            ReaderTxtActivity.a(this.a, (String[]) arrobject[0]);
            ReaderTxtActivity.a(this.a, (LinkedList) arrobject[1]);
            ReaderTxtActivity.c(this.a, false);
        }
    }
}
