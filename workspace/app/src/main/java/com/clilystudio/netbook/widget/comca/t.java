package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.l;
import com.clilystudio.netbook.widget.comca.r;
import com.clilystudio.netbook.widget.comca.s;

final class t extends s {
    private l c;
    private float d;

    public /* varargs */ t(String string, float ... arrf) {
        super(string, 0);
        this.a(arrf);
    }

    private t d() {
        t t2 = (t)super.a();
        t2.c = (l)t2.b;
        return t2;
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
    public final /* varargs */ void a(float ... arrf) {
        super.a(arrf);
        this.c = (l)this.b;
    }

    @Override
    final Object c() {
        return Float.valueOf(this.d);
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.d();
    }
}