package com.clilystudio.netbook.reader.random;

import com.clilystudio.netbook.reader.cc;
import com.clilystudio.netbook.reader.o;

final class G implements cc {
    private /* synthetic */ ReaderRandomActivity a;

    G(ReaderRandomActivity readerRandomActivity) {
        this.a = readerRandomActivity;
    }

    @Override
    public final void a() {
        o[] arro = ReaderRandomActivity.i(this.a);
        int n2 = arro.length;
        for (int i = 0; i < n2; ++i) {
            arro[i].a();
        }
        ReaderRandomActivity.j(this.a);
    }
}
