package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;

import java.util.LinkedList;

final class t implements e {

    private ReaderTxtActivity a;

    t(ReaderTxtActivity ReaderTxtActivity1) {
        a = ReaderTxtActivity1;
    }

    public final void a(Object Object1) {
        n n2 = (n) Object1;

        ReaderTxtActivity.a(a, n2);
        if (ReaderTxtActivity.b(a) == 2 && n2 != null) {
            Object[] Object_1darray3 = n2.d();

            if (Object_1darray3 != null) {
                ReaderTxtActivity.a(a, (String[]) Object_1darray3[0]);
                ReaderTxtActivity.a(a, (LinkedList) Object_1darray3[1]);
                ReaderTxtActivity.c(a, false);
            }
        }
    }
}
