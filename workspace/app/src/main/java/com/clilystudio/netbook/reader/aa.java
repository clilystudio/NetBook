package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.reader.txt.U;

abstract class aa implements Runnable {

    private boolean a;
    private Reader b;
    protected aa(Reader Reader1, boolean boolean2) {
        b = Reader1;
        a = boolean2;
    }

    private void c() {
        Reader.a(b, Reader.l(b).getHost());
        Reader.a(b, Reader.l(b).getChapters());
        Reader.d(b).post((Runnable) new ab(this));
    }

    public abstract void a();

    public abstract void b();

    public void run() {
        int int4;

        Reader.a(b, 0, Reader$Type.TOC);
        if (Reader.f(b)) {
            Reader.a(b, U.a(Reader.g(b)));
            int4 = 0;
        } else {
            int int3;

            Reader.a(b, Reader.a(b, Reader.h(b), Reader.i(b), Reader.j(b)));
            Reader.a(b, Reader.k(b));
            if (Reader.l(b) == null || a)
                int3 = 1;
            else
                int3 = 0;
            if (int3 != 0) {
                Reader.a(b, Reader.m(b));
                int4 = 0;
            } else
                int4 = 1;
        }
        if (Reader.l(b) != null) {
            c();
            if (!com.clilystudio.netbook.reader.Reader.f(b) && int4 == 0)
                Reader.b(b, Reader.l(b));
            if (int4 != 0) {
                Reader.a(b, new ag(b));
                Reader.n(b).b(new String[0]);
            }
        } else {
            Reader.a(b, Reader.k(b));
            if (Reader.l(b) != null)
                c();
            else
                Reader.d(b).post((Runnable) new ac(this));
        }
        Reader.a(b, 1, Reader$Type.TOC);
    }
}
