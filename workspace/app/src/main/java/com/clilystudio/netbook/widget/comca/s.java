package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.k;
import com.clilystudio.netbook.widget.comca.l;
import com.clilystudio.netbook.widget.comca.m;
import com.clilystudio.netbook.widget.comca.n;
import com.clilystudio.netbook.widget.comca.o;
import com.clilystudio.netbook.widget.comca.p;
import com.clilystudio.netbook.widget.comca.q;
import com.clilystudio.netbook.widget.comca.r;
import com.clilystudio.netbook.widget.comca.t;
import com.clilystudio.netbook.widget.comca.u;
import com.clilystudio.netbook.widget.comca.v;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class s implements Cloneable {
    private static final v e = new m();
    private static final v f = new k();
    String a;
    r b = null;
    private com.xiaomi.mistatistic.sdk.a.r c;
    private Class d;
    private v g;
    private Object h;

    static {
        Class[] arrclass = new Class[]{Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};
        Class[] arrclass2 = new Class[]{Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};
        Class[] arrclass3 = new Class[]{Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
        new HashMap();
        new HashMap();
    }

    private s(String string) {
        new ReentrantReadWriteLock();
        this.a = string;
    }

    /* synthetic */ s(String string, byte by) {
        this(string);
    }

    public static /* varargs */ s a(String string, float ... arrf) {
        return new t(string, arrf);
    }

    public static /* varargs */ s a(String string, int ... arrn) {
        return new u(string, arrn);
    }

    public s a() {
        try {
            s s2 = (s)super.clone();
            s2.a = this.a;
            s2.c = this.c;
            s2.b = this.b.a();
            s2.g = this.g;
            return s2;
        }
        catch (CloneNotSupportedException var1_2) {
            return null;
        }
    }

    void a(float f) {
        this.h = this.b.a(f);
    }

    /*
     * Enabled aggressive block sorting
     */
    public /* varargs */ void a(float ... arrf) {
        int n;
        this.d = Float.TYPE;
        int n2 = arrf.length;
        p[] arrp = new p[java.lang.Math.max(n2, 2)];
        if (n2 == n) {
            arrp[0] = new p(0.0f);
            arrp[n] = (p)o.a(1.0f, arrf[0]);
        } else {
            arrp[0] = (p)o.a(0.0f, arrf[0]);
            for (n = 1; n < n2; ++n) {
                arrp[n] = (p)o.a((float)n / (float)(n2 - 1), arrf[n]);
            }
        }
        this.b = new l(arrp);
    }

    /*
     * Enabled aggressive block sorting
     */
    public /* varargs */ void a(int ... arrn) {
        int n2;
        this.d = Integer.TYPE;
        int n3 = arrn.length;
        q[] arrq = new q[java.lang.Math.max(n3, 2)];
        if (n3 == n2) {
            arrq[0] = new q(0.0f);
            arrq[n2] = (q)o.a(1.0f, arrn[0]);
        } else {
            arrq[0] = (q)o.a(0.0f, arrn[0]);
            for (n2 = 1; n2 < n3; ++n2) {
                arrq[n2] = (q)o.a((float)n2 / (float)(n3 - 1), arrn[n2]);
            }
        }
        this.b = new n(arrq);
    }

    /*
     * Enabled aggressive block sorting
     */
    final void b() {
        if (this.g == null) {
            v v2 = this.d == Integer.class ? e : (this.d == Float.class ? f : null);
            this.g = v2;
        }
        if (this.g != null) {
            this.b.d = this.g;
        }
    }

    Object c() {
        return this.h;
    }

    public /* synthetic */ Object clone() {
        return this.a();
    }

    public String toString() {
        return this.a + ": " + this.b.toString();
    }
}