/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import android.view.animation.Interpolator;
import com.c.a.o;
import com.c.a.q;
import com.c.a.r;
import com.c.a.v;
import java.util.ArrayList;

final class n
extends r {
    private int e;
    private int f;
    private int g;
    private boolean h = true;

    public /* varargs */ n(q ... arrq) {
        super(arrq);
    }

    private n b() {
        ArrayList arrayList = this.c;
        int n2 = this.c.size();
        q[] arrq = new q[n2];
        for (int i = 0; i < n2; ++i) {
            arrq[i] = (q)((o)arrayList.get(i)).c();
        }
        return new n(arrq);
    }

    @Override
    public final /* synthetic */ r a() {
        return this.b();
    }

    @Override
    public final Object a(float f) {
        return this.b(f);
    }

    public final int b(float f) {
        int n2;
        if (this.a == 2) {
            if (this.h) {
                this.h = false;
                this.e = ((q)this.c.get((int)0)).b;
                this.f = ((q)this.c.get((int)n2)).b;
                this.g = this.f - this.e;
            }
            if (this.b != null) {
                f = this.b.getInterpolation(f);
            }
            if (this.d == null) {
                return this.e + (int)(f * (float)this.g);
            }
            return ((Number)this.d.a(f, this.e, this.f)).intValue();
        }
        if (f <= 0.0f) {
            q q2 = (q)this.c.get(0);
            q q3 = (q)this.c.get(n2);
            int n3 = q2.b;
            int n4 = q3.b;
            float f2 = q2.a;
            float f3 = q3.a;
            Interpolator interpolator = q3.b();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            float f4 = (f - f2) / (f3 - f2);
            if (this.d == null) {
                return n3 + (int)(f4 * (float)(n4 - n3));
            }
            return ((Number)this.d.a(f4, n3, n4)).intValue();
        }
        if (f >= 1.0f) {
            q q4 = (q)this.c.get(-2 + this.a);
            q q5 = (q)this.c.get(-1 + this.a);
            int n5 = q4.b;
            int n6 = q5.b;
            float f5 = q4.a;
            float f6 = q5.a;
            Interpolator interpolator = q5.b();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            float f7 = (f - f5) / (f6 - f5);
            if (this.d == null) {
                return n5 + (int)(f7 * (float)(n6 - n5));
            }
            return ((Number)this.d.a(f7, n5, n6)).intValue();
        }
        q q6 = (q)this.c.get(0);
        for (n2 = 1; n2 < this.a; ++n2) {
            q q7 = (q)this.c.get(n2);
            if (f < q7.a) {
                Interpolator interpolator = q7.b();
                if (interpolator != null) {
                    f = interpolator.getInterpolation(f);
                }
                float f8 = (f - q6.a) / (q7.a - q6.a);
                int n7 = q6.b;
                int n8 = q7.b;
                if (this.d == null) {
                    return n7 + (int)(f8 * (float)(n8 - n7));
                }
                return ((Number)this.d.a(f8, n7, n8)).intValue();
            }
            q6 = q7;
        }
        return ((Number)((o)this.c.get(-1 + this.a)).a()).intValue();
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.b();
    }
}
