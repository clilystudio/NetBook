/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import android.view.animation.Interpolator;
import com.c.a.o;

final class q
extends o {
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
    public final /* synthetic */ o c() {
        return this.d();
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.d();
    }
}
