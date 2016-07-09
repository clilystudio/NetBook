package com.clilystudio.netbook.widget.comca;

import java.util.ArrayList;

final class f implements b {
    private d a;
    private /* synthetic */ d b;

    f(d d2, d d3) {
        this.b = d2;
        this.a = d3;
    }

    public final void a(a a2) {
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void b(a a2) {
        a2.b(this);
        d.a(this.b).remove(a2);
        ((j) d.b(this.a).get(a2)).f = true;
        if (!this.b.b) {
            ArrayList arrayList = d.c(this.a);
            int n = arrayList.size();
            for (int i = 0; i < n; ++i) {
                if (((j) arrayList.get(i)).f) continue;
                return;
            }
            boolean bl = true;
            if (bl) {
                if (this.b.a != null) {
                    ArrayList arrayList2 = (ArrayList) this.b.a.clone();
                    int n2 = arrayList2.size();
                    for (int k = 0; k < n2; ++k) {
                        ((b) arrayList2.get(k)).b(this.a);
                    }
                }
                d.a(this.a, false);
            }
        }
    }

    public final void c(a a2) {
        if (!this.b.b && d.a(this.b).size() == 0 && this.b.a != null) {
            int n = this.b.a.size();
            for (int i = 0; i < n; ++i) {
                this.b.a.get(i).c(this.a);
            }
        }
    }

    public final void d(a a2) {
    }
}
