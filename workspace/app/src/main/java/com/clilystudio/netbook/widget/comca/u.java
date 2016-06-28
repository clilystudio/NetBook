package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.n;
import com.clilystudio.netbook.widget.comca.r;
import com.clilystudio.netbook.widget.comca.s;

final class u extends s {
    private n c;
    private int d;

    public /* varargs */ u(String string, int ... arrn) {
        super(string, 0);
        this.a(arrn);
    }

    private u d() {
        u u2 = (u)super.a();
        u2.c = (n)u2.b;
        return u2;
    }

    @Override
    public final /* synthetic */ s a() {
        return this.d();
    }

    @Override
    final void a(float f) {
        this.d = this.c.b(f);
    }

    @Override
    public final /* varargs */ void a(int ... arrn) {
        super.a(arrn);
        this.c = (n)this.b;
    }

    @Override
    final Object c() {
        return this.d;
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.d();
    }
}
