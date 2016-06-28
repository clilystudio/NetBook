package com.clilystudio.netbook.widget.comca;

import com.clilystudio.netbook.widget.comca.a;
import com.clilystudio.netbook.widget.comca.b;
import com.clilystudio.netbook.widget.comca.d;
import com.clilystudio.netbook.widget.comca.j;
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
        a2.b((b)this);
        d.a((d)this.b).remove(a2);
        ((j)d.b((d)this.a).get((Object)a2)).f = true;
        if (!this.b.b) {
            ArrayList arrayList = d.c((d)this.a);
            int n = arrayList.size();
            for (int i = 0; i < n; ++i) {
                if (((j)arrayList.get((int)i)).f) continue;
                return;
            }
            boolean bl = true;
            if (bl) {
                if (this.b.a != null) {
                    ArrayList arrayList2 = (ArrayList)this.b.a.clone();
                    int n2 = arrayList2.size();
                    for (int k = 0; k < n2; ++k) {
                        ((b)arrayList2.get(k)).b((a)((Object)this.a));
                    }
                }
                d.a((d)this.a, (boolean)false);
            }
        }
    }

    public final void c(a a2) {
        if (!this.b.b && d.a((d)this.b).size() == 0 && this.b.a != null) {
            int n = this.b.a.size();
            for (int i = 0; i < n; ++i) {
                ((b)this.b.a.get(i)).c((a)((Object)this.a));
            }
        }
    }

    public final void d(a a2) {
    }
}
