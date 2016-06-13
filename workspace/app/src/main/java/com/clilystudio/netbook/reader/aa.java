package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.reader.txt.U;

abstract class aa
        implements Runnable {
    private boolean a;
    private /* synthetic */ Reader b;

    protected aa(Reader reader, boolean bl) {
        this.b = reader;
        this.a = bl;
    }

    private void c() {
        Reader.a(this.b, Reader.l(this.b).getHost());
        Reader.a(this.b, Reader.l(this.b).getChapters());
        Reader.d(this.b).post((Runnable) ((Object) new ab(this)));
    }

    public abstract void a();

    public abstract void b();

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void run() {
        boolean bl;
        Reader.a(this.b, 0, Reader$Type.TOC);
        if (Reader.f(this.b)) {
            Reader.a(this.b, U.a(Reader.g(this.b)));
            bl = false;
        } else {
            Reader.a(this.b, Reader.a(this.b, Reader.h(this.b), Reader.i(this.b), Reader.j(this.b)));
            Reader.a(this.b, Reader.k(this.b));
            boolean bl2 = Reader.l(this.b) == null || this.a;
            if (bl2) {
                Reader.a(this.b, Reader.m(this.b));
                bl = false;
            } else {
                bl = true;
            }
        }
        if (Reader.l(this.b) != null) {
            this.c();
            if (!Reader.f(this.b) && !bl) {
                Reader.b(this.b, Reader.l(this.b));
            }
            if (bl) {
                Reader.a(this.b, new ag(this.b));
                Reader.n(this.b).b(new String[0]);
            }
        } else {
            Reader.a(this.b, Reader.k(this.b));
            if (Reader.l(this.b) != null) {
                this.c();
            } else {
                Reader.d(this.b).post((Runnable) ((Object) new ac(this)));
            }
        }
        Reader.a(this.b, 1, Reader$Type.TOC);
    }
}
