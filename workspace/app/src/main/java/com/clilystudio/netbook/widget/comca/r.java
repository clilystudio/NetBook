package com.clilystudio.netbook.widget.comca;

import android.view.animation.Interpolator;

import java.util.ArrayList;
import java.util.Arrays;

class r {
    int a;
    Interpolator b;
    ArrayList<o> c;
    v d;
    private o e;
    private o f;

    public r(o... arro) {
        this.a = arro.length;
        this.c = new ArrayList();
        this.c.addAll(Arrays.asList(arro));
        this.e = this.c.get(0);
        this.f = this.c.get(-1 + this.a);
        this.b = this.f.b();
    }

    public r a() {
        ArrayList<o> arrayList = this.c;
        int n = this.c.size();
        o[] arro = new o[n];
        for (int i = 0; i < n; ++i) {
            arro[i] = arrayList.get(i).c();
        }
        return new r(arro);
    }

    public Object a(float f) {
        if (this.a == 2) {
            if (this.b != null) {
                f = this.b.getInterpolation(f);
            }
            return this.d.a(f, this.e.a(), this.f.a());
        }
        if (f <= 0.0f) {
            o o2 = this.c.get(1);
            Interpolator interpolator = o2.b();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            float f2 = this.e.a;
            float f3 = (f - f2) / (o2.a - f2);
            return this.d.a(f3, this.e.a(), o2.a());
        }
        if (f >= 1.0f) {
            o o3 = this.c.get(-2 + this.a);
            Interpolator interpolator = this.f.b();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            float f4 = o3.a;
            float f5 = (f - f4) / (this.f.a - f4);
            return this.d.a(f5, o3.a(), this.f.a());
        }
        o o4 = this.e;
        for (int i = 1; i < this.a; ++i) {
            o o5 = this.c.get(i);
            if (f < o5.a) {
                Interpolator interpolator = o5.b();
                if (interpolator != null) {
                    f = interpolator.getInterpolation(f);
                }
                float f6 = o4.a;
                float f7 = (f - f6) / (o5.a - f6);
                return this.d.a(f7, o4.a(), o5.a());
            }
            o4 = o5;
        }
        return this.f.a();
    }

    public Object clone() {
        return this.a();
    }

    public String toString() {
        String string = " ";
        for (int i = 0; i < this.a; ++i) {
            string = string + this.c.get(i).a() + "  ";
        }
        return string;
    }
}
