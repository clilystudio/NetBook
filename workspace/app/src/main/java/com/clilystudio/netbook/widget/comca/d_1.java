/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.a;
import com.c.a.b;
import com.c.a.e;
import com.c.a.f;
import com.c.a.g;
import com.c.a.h;
import com.c.a.i;
import com.c.a.j;
import com.c.a.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class d
extends a {
    boolean b = false;
    private ArrayList<a> c = new ArrayList();
    private HashMap<a, j> d = new HashMap();
    private ArrayList<j> e = new ArrayList();
    private ArrayList<j> f = new ArrayList();
    private boolean g = true;
    private f h = null;
    private boolean i = false;
    private long j = 0;
    private w k = null;

    static /* synthetic */ ArrayList a(d d2) {
        return d2.c;
    }

    static /* synthetic */ boolean a(d d2, boolean bl) {
        d2.i = false;
        return false;
    }

    static /* synthetic */ HashMap b(d d2) {
        return d2.d;
    }

    static /* synthetic */ ArrayList c(d d2) {
        return d2.f;
    }

    static /* synthetic */ ArrayList d(d d2) {
        return d2.e;
    }

    private d f() {
        d d2 = (d)super.e();
        d2.g = true;
        d2.b = false;
        d2.i = false;
        d2.c = new ArrayList();
        d2.d = new HashMap();
        d2.e = new ArrayList();
        d2.f = new ArrayList();
        HashMap<j, j> hashMap = new HashMap<j, j>();
        for (j j2 : this.e) {
            j j3 = j2.a();
            hashMap.put(j2, j3);
            d2.e.add(j3);
            d2.d.put(j3.a, j3);
            j3.b = null;
            j3.c = null;
            j3.e = null;
            j3.d = null;
            ArrayList<b> arrayList = j3.a.a;
            if (arrayList == null) continue;
            Iterator<b> iterator = arrayList.iterator();
            ArrayList<b> arrayList2 = null;
            while (iterator.hasNext()) {
                b b2 = iterator.next();
                if (!(b2 instanceof f)) continue;
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<b>();
                }
                arrayList2.add(b2);
            }
            if (arrayList2 == null) continue;
            Iterator iterator2 = arrayList2.iterator();
            while (iterator2.hasNext()) {
                arrayList.remove((b)iterator2.next());
            }
        }
        for (j j4 : this.e) {
            j j5 = (j)hashMap.get(j4);
            if (j4.b == null) continue;
            for (h h2 : j4.b) {
                j5.a(new h((j)hashMap.get(h2.a), h2.b));
            }
        }
        return d2;
    }

    private void g() {
        if (this.g) {
            this.f.clear();
            ArrayList<j> arrayList = new ArrayList<j>();
            int n = this.e.size();
            for (int i = 0; i < n; ++i) {
                j j2 = this.e.get(i);
                if (j2.b != null && j2.b.size() != 0) continue;
                arrayList.add(j2);
            }
            ArrayList<j> arrayList2 = new ArrayList<j>();
            while (arrayList.size() > 0) {
                int n2 = arrayList.size();
                for (int k = 0; k < n2; ++k) {
                    j j3 = (j)arrayList.get(k);
                    this.f.add(j3);
                    if (j3.e == null) continue;
                    int n3 = j3.e.size();
                    for (int i2 = 0; i2 < n3; ++i2) {
                        j j4 = j3.e.get(i2);
                        j4.d.remove(j3);
                        if (j4.d.size() != 0) continue;
                        arrayList2.add(j4);
                    }
                }
                arrayList.clear();
                arrayList.addAll(arrayList2);
                arrayList2.clear();
            }
            this.g = false;
            if (this.f.size() != this.e.size()) {
                throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
            }
        } else {
            int n = this.e.size();
            for (int i = 0; i < n; ++i) {
                j j5 = this.e.get(i);
                if (j5.b != null && j5.b.size() > 0) {
                    int n4 = j5.b.size();
                    for (int k = 0; k < n4; ++k) {
                        h h2 = j5.b.get(k);
                        if (j5.d == null) {
                            j5.d = new ArrayList();
                        }
                        if (j5.d.contains(h2.a)) continue;
                        j5.d.add(h2.a);
                    }
                }
                j5.f = false;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a() {
        int n = 0;
        this.b = false;
        this.i = true;
        this.g();
        int n2 = this.f.size();
        for (int k = 0; k < n2; ++k) {
            j j2 = this.f.get(k);
            ArrayList<b> arrayList = j2.a.a;
            if (arrayList == null || arrayList.size() <= 0) continue;
            for (b b2 : new ArrayList<b>(arrayList)) {
                if (!(b2 instanceof i) && !(b2 instanceof f)) continue;
                j2.a.b(b2);
            }
        }
        ArrayList<j> arrayList = new ArrayList<j>();
        for (int i2 = 0; i2 < n2; ++i2) {
            j j3 = this.f.get(i2);
            if (this.h == null) {
                this.h = new f(this, this);
            }
            if (j3.b == null || j3.b.size() == 0) {
                arrayList.add(j3);
            } else {
                int n3 = j3.b.size();
                for (int i3 = 0; i3 < n3; ++i3) {
                    h h2 = j3.b.get(i3);
                    h2.a.a.a(new i(this, j3, h2.b));
                }
                j3.c = (ArrayList)j3.b.clone();
            }
            j3.a.a(this.h);
        }
        if (0 <= 0) {
            for (j j4 : arrayList) {
                j4.a.a();
                this.c.add(j4.a);
            }
        } else {
            this.k = w.a(0.0f, 1.0f);
            this.k.a(0);
            this.k.a(new e(this, arrayList));
            this.k.a();
        }
        if (this.a != null) {
            ArrayList arrayList2 = (ArrayList)this.a.clone();
            int n4 = arrayList2.size();
            for (int i4 = 0; i4 < n4; ++i4) {
                ((b)arrayList2.get(i4)).a(this);
            }
        }
        if (this.e.size() == 0 && 0 == 0) {
            this.i = false;
            if (this.a != null) {
                ArrayList arrayList3 = (ArrayList)this.a.clone();
                int n5 = arrayList3.size();
                while (n < n5) {
                    ((b)arrayList3.get(n)).b(this);
                    ++n;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public final /* varargs */ void a(a ... arra) {
        this.g = true;
        int n = 0;
        while (n < 2) {
            g g2;
            a a2 = arra[n];
            if (a2 != null) {
                this.g = true;
                g2 = new g(this, a2);
            } else {
                g2 = null;
            }
            g2.a(arra[n + 1]);
            ++n;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void b() {
        this.b = true;
        if (this.i) {
            ArrayList arrayList;
            if (this.a != null) {
                ArrayList arrayList2 = (ArrayList)this.a.clone();
                Iterator iterator = arrayList2.iterator();
                while (iterator.hasNext()) {
                    ((b)iterator.next()).c(this);
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            if (this.k != null && this.k.d()) {
                this.k.b();
            } else if (this.f.size() > 0) {
                Iterator<j> iterator = this.f.iterator();
                while (iterator.hasNext()) {
                    iterator.next().a.b();
                }
            }
            if (arrayList != null) {
                Iterator iterator = arrayList.iterator();
                while (iterator.hasNext()) {
                    ((b)iterator.next()).b(this);
                }
            }
            this.i = false;
        }
    }

    @Override
    public final void c() {
        this.b = true;
        if (this.i) {
            if (this.f.size() != this.e.size()) {
                this.g();
                for (j j2 : this.f) {
                    if (this.h == null) {
                        this.h = new f(this, this);
                    }
                    j2.a.a(this.h);
                }
            }
            if (this.k != null) {
                this.k.b();
            }
            if (this.f.size() > 0) {
                Iterator<j> iterator = this.f.iterator();
                while (iterator.hasNext()) {
                    iterator.next().a.c();
                }
            }
            if (this.a != null) {
                Iterator iterator = ((ArrayList)this.a.clone()).iterator();
                while (iterator.hasNext()) {
                    ((b)iterator.next()).b(this);
                }
            }
            this.i = false;
        }
    }

    @Override
    public final /* synthetic */ Object clone() {
        return this.f();
    }

    @Override
    public final boolean d() {
        Iterator<j> iterator = this.e.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().a.d()) continue;
            return true;
        }
        return false;
    }

    @Override
    public final /* synthetic */ a e() {
        return this.f();
    }
}
