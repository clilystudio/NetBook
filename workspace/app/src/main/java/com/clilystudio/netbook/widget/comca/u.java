/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.n;
import com.c.a.r;
import com.c.a.s;

final class u
extends s {
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
