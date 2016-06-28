/*
 * Decompiled with CFR 0_115.
 */
package com.c.a;

import com.c.a.a;
import com.c.a.c;
import com.c.a.d;
import com.c.a.j;
import java.util.ArrayList;

final class e
extends c {
    private boolean a;
    private /* synthetic */ ArrayList b;
    private /* synthetic */ d c;

    e(d d2, ArrayList arrayList) {
        this.c = d2;
        this.b = arrayList;
        this.a = false;
    }

    public final void b(a a2) {
        if (!this.a) {
            int n = this.b.size();
            for (int i = 0; i < n; ++i) {
                j j2 = (j)this.b.get(i);
                j2.a.a();
                d.a((d)this.c).add(j2.a);
            }
        }
    }

    public final void c(a a2) {
        this.a = true;
    }
}
