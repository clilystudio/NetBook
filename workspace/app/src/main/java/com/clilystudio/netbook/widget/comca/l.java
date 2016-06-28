
package com.clilystudio.netbook.widget.comca;

import android.view.animation.Interpolator;
import com.clilystudio.netbook.widget.comca.o;
import com.clilystudio.netbook.widget.comca.p;
import com.clilystudio.netbook.widget.comca.r;
import com.clilystudio.netbook.widget.comca.v;
import java.util.ArrayList;

final class l extends r {
    private float e;
    private float f;
    private float g;
    private boolean h = true;

    public /* varargs */ l(p ... arrp) {
        super(arrp);
    }

    private l b() {
        ArrayList arrayList = this.c;
        int n = this.c.size();
        p[] arrp = new p[n];
        for (int i = 0; i < n; ++i) {
            arrp[i] = (p)((o)arrayList.get(i)).c();
        }
        return new l(arrp);
    }

    @Override
    public final /* synthetic */ r a() {
        return this.b();
    }

    @Override
    public final Object a(float f) {
        return Float.valueOf(this.b(f));
    }

    public final float b(float f) {
        int n;
        if (this.a == 2) {
            if (this.h) {
                this.h = false;
                this.e = ((p)this.c.get((int)0)).b;
                this.f = ((p)this.c.get((int)n)).b;
                this.g = this.f - this.e;
            }
            if (this.b != null) {
                f = this.b.getInterpolation(f);
            }
            if (this.d == null) {
                return this.e + f * this.g;
            }
            return ((Number)this.d.a(f, Float.valueOf(this.e), Float.valueOf(this.f))).floatValue();
        }
        if (f <= 0.0f) {
            p p2 = (p)this.c.get(0);
            p p3 = (p)this.c.get(n);
            float f2 = p2.b;
            float f3 = p3.b;
            float f4 = p2.a;
            float f5 = p3.a;
            Interpolator interpolator = p3.b();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            float f6 = (f - f4) / (f5 - f4);
            if (this.d == null) {
                return f2 + f6 * (f3 - f2);
            }
            return ((Number)this.d.a(f6, Float.valueOf(f2), Float.valueOf(f3))).floatValue();
        }
        if (f >= 1.0f) {
            p p4 = (p)this.c.get(-2 + this.a);
            p p5 = (p)this.c.get(-1 + this.a);
            float f7 = p4.b;
            float f8 = p5.b;
            float f9 = p4.a;
            float f10 = p5.a;
            Interpolator interpolator = p5.b();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            float f11 = (f - f9) / (f10 - f9);
            if (this.d == null) {
                return f7 + f11 * (f8 - f7);
            }
            return ((Number)this.d.a(f11, Float.valueOf(f7), Float.valueOf(f8))).floatValue();
        }
        p p6 = (p)this.c.get(0);
        for (n = 1; n < this.a; ++n) {
            p p7 = (p)this.c.get(n);
            if (f < p7.a) {
                Interpolator interpolator = p7.b();
                if (interpolator != null) {
                    f = interpolator.getInterpolation(f);
                }
                float f12 = (f - p6.a) / (p7.a - p6.a);
                float f13 = p6.b;
                float f14 = p7.b;
                if (this.d == null) {
                    return f13 + f12 * (f14 - f13);
                }
                return ((Number)this.d.a(f12, Float.valueOf(f13), Float.valueOf(f14))).floatValue();
            }
            p6 = p7;
        }
        return ((Number)((o)this.c.get(-1 + this.a)).a()).floatValue();
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.b();
    }
}
