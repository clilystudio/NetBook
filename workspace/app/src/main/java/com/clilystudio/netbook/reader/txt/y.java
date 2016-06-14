package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

final class y implements e<n> {
    final /* synthetic */ ReaderTxtActivity a;

    y(ReaderTxtActivity readerTxtActivity) {
        this.a = readerTxtActivity;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        n n2 = (n) object;
        ReaderTxtActivity.d(this.a)[1].a(n2);
        if (n2 != null) {
            n2.a((e) new z(this));
        }
    }
}
