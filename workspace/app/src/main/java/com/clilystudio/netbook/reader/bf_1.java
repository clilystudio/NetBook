package com.clilystudio.netbook.reader;

final class bf implements cc {

    private ReaderActivity a;

    bf(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void a() {
        o[] o_1darray1 = ReaderActivity.i(a);
        int int2 = o_1darray1.length;
        int int3;

        for (int3 = 0; int3 < int2; ++int3) {
            o o4 = o_1darray1[int3];

            if (o4 != null)
                o4.a();
        }
        ReaderActivity.t(a);
        a.g();
    }
}
