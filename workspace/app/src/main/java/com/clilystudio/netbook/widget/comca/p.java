package com.clilystudio.netbook.widget.comca;

import android.view.animation.Interpolator;
import com.clilystudio.netbook.widget.comca.o;

final class p extends o {
    float b;

    p(float f) {
        this.a = f;
    }

    p(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    private p d() {
        p p2 = new p(this.a, this.b);
        p2.a(this.b());
        return p2;
    }

    @Override
    public final Object a() {
        return Float.valueOf(this.b);
    }

    @Override
    public final /* synthetic */ o c() {
        return this.d();
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.d();
    }
}