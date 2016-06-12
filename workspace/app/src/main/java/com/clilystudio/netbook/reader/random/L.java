package com.clilystudio.netbook.reader.random;

import android.content.Context;

import com.umeng.a.b;

final class L implements com.umeng.update.a {

    private ReaderRandomActivity a;

    L(ReaderRandomActivity ReaderRandomActivity1) {
        a = ReaderRandomActivity1;
    }

    public final void a(int int1) {
        switch (int1) {
            default:
                return;
            case 1070:
                a.onBackPressed();
                b.a((Context) a, "random_reader_quit");
                return;
        }
    }
}
