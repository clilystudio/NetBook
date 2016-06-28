/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.a;
import com.c.a.h;
import java.util.ArrayList;

final class j
implements Cloneable {
    public a a;
    public ArrayList<h> b = null;
    public ArrayList<h> c = null;
    public ArrayList<j> d = null;
    public ArrayList<j> e = null;
    public boolean f = false;

    public j(a a2) {
        this.a = a2;
    }

    public final j a() {
        try {
            j j2 = (j)super.clone();
            j2.a = this.a.e();
            return j2;
        }
        catch (CloneNotSupportedException var1_2) {
            throw new AssertionError();
        }
    }

    public final void a(h h2) {
        if (this.b == null) {
            this.b = new ArrayList();
            this.d = new ArrayList();
        }
        this.b.add(h2);
        if (!this.d.contains(h2.a)) {
            this.d.add(h2.a);
        }
        j j2 = h2.a;
        if (j2.e == null) {
            j2.e = new ArrayList();
        }
        j2.e.add(this);
    }

    public final /* synthetic */ Object clone() {
        return this.a();
    }
}
