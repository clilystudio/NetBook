package com.clilystudio.netbook.widget.comca;

final class u extends s {
    private n c;
    private int d;

    public u(String string, int... arrn) {
        super(string, (byte)0);
        this.a(arrn);
    }

    private u d() {
        u u2 = (u) super.a();
        u2.c = (n) u2.b;
        return u2;
    }

    @Override
    public final s a() {
        return this.d();
    }

    @Override
    final void a(float f) {
        this.d = this.c.b(f);
    }

    @Override
    public final void a(int... arrn) {
        super.a(arrn);
        this.c = (n) this.b;
    }

    @Override
    final Object c() {
        return this.d;
    }

    @Override
    public final Object clone() {
        return this.d();
    }
}
