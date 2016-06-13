package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.o;

final class K
        implements cd {
    private /* synthetic */ ReaderRandomActivity a;

    K(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a() {
        o[] arro = ReaderRandomActivity.i(this.a);
        int n2 = arro.length;
        for (int i = 0; i < n2; ++i) {
            arro[i].c();
        }
    }
}
