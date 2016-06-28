package com.clilystudio.netbook.widget.comca;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.clilystudio.netbook.widget.comca.A;
import com.clilystudio.netbook.widget.comca.B;
import com.clilystudio.netbook.widget.comca.C;
import com.clilystudio.netbook.widget.comca.D;
import com.clilystudio.netbook.widget.comca.a;
import com.clilystudio.netbook.widget.comca.b;
import com.clilystudio.netbook.widget.comca.k;
import com.clilystudio.netbook.widget.comca.m;
import com.clilystudio.netbook.widget.comca.s;
import com.clilystudio.netbook.widget.comca.x;
import com.clilystudio.netbook.widget.comca.y;
import com.clilystudio.netbook.widget.comca.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class w extends a {
    private static ThreadLocal<C> d = new ThreadLocal();
    private static final ThreadLocal<ArrayList<w>> e = new x();
    private static final ThreadLocal<ArrayList<w>> f = new y();
    private static final ThreadLocal<ArrayList<w>> g = new z();
    private static final ThreadLocal<ArrayList<w>> h = new ThreadLocal<>();
    private static final ThreadLocal<ArrayList<w>> i = new ThreadLocal<>();
    private static final Interpolator j = new AccelerateDecelerateInterpolator();
    private static long v;
    private s[] A;
    private HashMap<String, s> B;
    private long b;
    private long c = -1;
    private boolean k = false;
    private int l = 0;
    private float m = 0.0f;
    private boolean n = false;
    private long o;
    private int p = 0;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private long t = 300;
    private long u = 0;
    private int w = 0;
    private int x = 1;
    private Interpolator y = j;
    private ArrayList<D> z = null;

    static {
        new m();
        new k();
        v = 10;
    }

    static /* synthetic */ long a(w w2) {
        return w2.u;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static /* varargs */ w a(float ... arrf) {
        w w2 = new w();
        if (arrf == null || arrf.length == 0) {
            return w2;
        }
        if (w2.A == null || w2.A.length == 0) {
            s[] arrs = new s[]{s.a("", arrf)};
            w2.a(arrs);
        } else {
            w2.A[0].a(arrf);
        }
        w2.s = false;
        return w2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static /* varargs */ w a(int ... arrn) {
        w w2 = new w();
        if (arrn == null || arrn.length == 0) {
            return w2;
        }
        if (w2.A == null || w2.A.length == 0) {
            s[] arrs = new s[]{s.a("", arrn)};
            w2.a(arrs);
        } else {
            w2.A[0].a(arrn);
        }
        w2.s = false;
        return w2;
    }

    private void a(float f) {
        float f2;
        this.m = f2 = this.y.getInterpolation(f);
        int n = this.A.length;
        for (int i = 0; i < n; ++i) {
            this.A[i].a(f2);
        }
        if (this.z != null) {
            int n2 = this.z.size();
            for (int j = 0; j < n2; ++j) {
                this.z.get(j).a(this);
            }
        }
    }

    private /* varargs */ void a(s ... arrs) {
        this.A = arrs;
        this.B = new HashMap(1);
        for (int i = 0; i <= 0; ++i) {
            s s2 = arrs[0];
            this.B.put(s2.a, s2);
        }
        this.s = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ boolean a(w w2, long l) {
        if (!w2.n) {
            w2.n = true;
            w2.o = l;
            return false;
        } else {
            long l2 = l - w2.o;
            if (l2 <= w2.u) return false;
            {
                w2.b = l - (l2 - w2.u);
                w2.p = 1;
                return true;
            }
        }
    }

    static /* synthetic */ boolean a(w w2, boolean bl) {
        w2.q = true;
        return true;
    }

    static /* synthetic */ void b(w w2) {
        w2.p();
    }

    static /* synthetic */ void c(w w2) {
        w2.o();
    }

    private void d(long l) {
        this.n();
        long l2 = AnimationUtils.currentAnimationTimeMillis();
        if (this.p != 1) {
            this.c = l;
            this.p = 2;
        }
        this.b = l2 - l;
        this.c(l2);
    }

    static /* synthetic */ ThreadLocal h() {
        return e;
    }

    static /* synthetic */ ThreadLocal i() {
        return g;
    }

    static /* synthetic */ ThreadLocal j() {
        return f;
    }

    static /* synthetic */ ThreadLocal k() {
        return i;
    }

    static /* synthetic */ ThreadLocal l() {
        return h;
    }

    static /* synthetic */ long m() {
        return v;
    }

    private void n() {
        if (!this.s) {
            int n = this.A.length;
            for (int i = 0; i < n; ++i) {
                this.A[i].b();
            }
            this.s = true;
        }
    }

    private void o() {
        e.get().remove(this);
        f.get().remove(this);
        g.get().remove(this);
        this.p = 0;
        if (this.q && this.a != null) {
            ArrayList arrayList = (ArrayList)this.a.clone();
            int n = arrayList.size();
            for (int i = 0; i < n; ++i) {
                ((b)arrayList.get(i)).b((a)this);
            }
        }
        this.q = false;
        this.r = false;
    }

    private void p() {
        this.n();
        e.get().add(this);
        if (this.u > 0 && this.a != null) {
            ArrayList arrayList = (ArrayList)this.a.clone();
            int n = arrayList.size();
            for (int i = 0; i < n; ++i) {
                ((b)arrayList.get(i)).a((a)this);
            }
        }
    }

    private w q() {
        int n = 0;
        w w2 = (w)super.e();
        if (this.z != null) {
            ArrayList<D> arrayList = this.z;
            w2.z = new ArrayList();
            int n2 = arrayList.size();
            for (int i = 0; i < n2; ++i) {
                w2.z.add(arrayList.get(i));
            }
        }
        w2.c = -1;
        w2.k = false;
        w2.l = 0;
        w2.s = false;
        w2.p = 0;
        w2.n = false;
        s[] arrs = this.A;
        if (arrs != null) {
            int n3 = arrs.length;
            w2.A = new s[n3];
            w2.B = new HashMap(n3);
            while (n < n3) {
                s s2;
                w2.A[n] = s2 = arrs[n].a();
                w2.B.put(s2.a, s2);
                ++n;
            }
        }
        return w2;
    }

    public final w a(long l) {
        if (l < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + l);
        }
        this.t = l;
        return this;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        C c;
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.k = false;
        this.l = 0;
        this.p = 0;
        this.r = true;
        this.n = false;
        f.get().add(this);
        if (this.u == 0) {
            long l = !this.s || this.p == 0 ? 0 : AnimationUtils.currentAnimationTimeMillis() - this.b;
            this.d(l);
            this.p = 0;
            this.q = true;
            if (this.a != null) {
                ArrayList arrayList = (ArrayList)this.a.clone();
                int n = arrayList.size();
                for (int i = 0; i < n; ++i) {
                    ((b)arrayList.get(i)).a((a)this);
                }
            }
        }
        if ((c = d.get()) == null) {
            c = new C(0);
            d.set(c);
        }
        c.sendEmptyMessage(0);
    }

    public final void a(Interpolator interpolator) {
        if (interpolator != null) {
            this.y = interpolator;
            return;
        }
        this.y = new LinearInterpolator();
    }

    public final void a(D d) {
        if (this.z == null) {
            this.z = new ArrayList();
        }
        this.z.add(d);
    }

    public final void b() {
        if (this.p != 0 || f.get().contains(this) || g.get().contains(this)) {
            if (this.q && this.a != null) {
                Iterator iterator = ((ArrayList)this.a.clone()).iterator();
                while (iterator.hasNext()) {
                    ((b)iterator.next()).c((a)this);
                }
            }
            this.o();
        }
    }

    public final void b(long l) {
        this.u = l;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void c() {
        if (!e.get().contains(this) && !f.get().contains(this)) {
            this.n = false;
            this.p();
        } else if (!this.s) {
            this.n();
        }
        this.a(1.0f);
        this.o();
    }

    /*
     * Exception decompiling
     */
    final boolean c(long var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Extractable last case doesn't follow previous
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:486)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doClass(Main.java:46)
        // org.benf.cfr.reader.Main.main(Main.java:183)
        throw new IllegalStateException("Decompilation failed");
    }

    public final /* synthetic */ Object clone() {
        return this.q();
    }

    public final boolean d() {
        if (this.p == 1 || this.q) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ a e() {
        return this.q();
    }

    public final Object f() {
        if (this.A != null && this.A.length > 0) {
            return this.A[0].c();
        }
        return null;
    }

    public final float g() {
        return this.m;
    }

    public final String toString() {
        String string = "ValueAnimator@" + Integer.toHexString(this.hashCode());
        if (this.A != null) {
            for (int i = 0; i < this.A.length; ++i) {
                string = string + "\n    " + this.A[i].toString();
            }
        }
        return string;
    }
}