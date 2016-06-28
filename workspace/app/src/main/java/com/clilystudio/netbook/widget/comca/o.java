/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import android.view.animation.Interpolator;
import com.c.a.p;
import com.c.a.q;

public abstract class o
implements Cloneable {
    float a;
    private Interpolator b = null;

    public static o a(float f, float f2) {
        return new p(f, f2);
    }

    public static o a(float f, int n) {
        return new q(f, n);
    }

    public abstract Object a();

    public final void a(Interpolator interpolator) {
        this.b = interpolator;
    }

    public final Interpolator b() {
        return this.b;
    }

    public abstract o c();

    public /* synthetic */ Object clone() {
        return this.c();
    }
}
