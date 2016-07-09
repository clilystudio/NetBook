package com.clilystudio.netbook.widget.comca;

public class g {
    private j a;
    private /* synthetic */ d b;

    g(d d2, a a2) {
        this.b = d2;
        this.a = (j) d.b(d2).get(a2);
        if (this.a == null) {
            this.a = new j(a2);
            d.b(d2).put(a2, this.a);
            d.d(d2).add(this.a);
        }
    }

    public final g a(a a2) {
        j j2 = (j) d.b(this.b).get(a2);
        if (j2 == null) {
            j2 = new j(a2);
            d.b(this.b).put(a2, j2);
            d.d(this.b).add(j2);
        }
        j2.a(new h(this.a, 1));
        return this;
    }
}
