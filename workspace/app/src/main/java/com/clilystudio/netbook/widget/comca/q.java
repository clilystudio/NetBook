package com.clilystudio.netbook.widget.comca;

final class q extends o {
    int b;

    q(float f) {
        this.a = f;
    }

    q(float f, int n) {
        this.a = f;
        this.b = n;
    }

    private q d() {
        q q2 = new q(this.a, this.b);
        q2.a(this.b());
        return q2;
    }

    @Override
    public final Object a() {
        return this.b;
    }

    @Override
    public final o c() {
        return this.d();
    }

    @Override
    public final Object clone() {
        return this.d();
    }
}
