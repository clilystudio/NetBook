package com.clilystudio.netbook.widget.comca;

import java.util.ArrayList;

final class e implements b {
    private boolean a;
    private /* synthetic */ ArrayList b;
    private /* synthetic */ d c;

    e(d d2, ArrayList arrayList) {
        this.c = d2;
        this.b = arrayList;
        this.a = false;
    }

    @Override
    public void a(a var1) {

    }

    public final void b(a a2) {
        if (!this.a) {
            int n = this.b.size();
            for (int i = 0; i < n; ++i) {
                j j2 = (j) this.b.get(i);
                j2.a.a();
                d.a(this.c).add(j2.a);
            }
        }
    }

    public final void c(a a2) {
        this.a = true;
    }

    @Override
    public void d(a var1) {

    }
}
