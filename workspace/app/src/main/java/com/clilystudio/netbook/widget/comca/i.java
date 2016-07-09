package com.clilystudio.netbook.widget.comca;

final class i implements b {
    private d a;
    private j b;
    private int c;

    public i(d d2, j j2, int n) {
        this.a = d2;
        this.b = j2;
        this.c = n;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void e(a a2) {
        h h2;
        block2:
        {
            if (this.a.b) {
                return;
            }
            int n = this.b.c.size();
            for (int k = 0; k < n; ++k) {
                h2 = this.b.c.get(k);
                if (h2.b != this.c || h2.a.a != a2) continue;
                a2.b(this);
                break block2;
            }
            h2 = null;
        }
        this.b.c.remove(h2);
        if (this.b.c.size() != 0) return;
        this.b.a.a();
        d.a(this.a).add(this.b.a);
    }

    public final void a(a a2) {
        if (this.c == 0) {
            this.e(a2);
        }
    }

    public final void b(a a2) {
        if (this.c == 1) {
            this.e(a2);
        }
    }

    public final void c(a a2) {
    }

    public final void d(a a2) {
    }
}
