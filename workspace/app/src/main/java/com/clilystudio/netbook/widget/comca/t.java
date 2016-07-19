package com.clilystudio.netbook.widget.comca;

final class t extends s {
    private l c;
    private float d;

    public t(String string, float... arrf) {
        super(string);
        this.a(arrf);
    }

    private t d() {
        t t2 = (t) super.a();
        t2.c = (l) t2.b;
        return t2;
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
    public final void a(float... arrf) {
        super.a(arrf);
        this.c = (l) this.b;
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
