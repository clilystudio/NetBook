package com.clilystudio.netbook.widget.comca;

import java.util.ArrayList;

public abstract class a implements Cloneable {
    ArrayList<b> a = null;

    public void a() {
    }

    public final void a(b b2) {
        if (this.a == null) {
            this.a = new ArrayList();
        }
        this.a.add(b2);
    }

    public void b() {
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final void b(b b2) {
        if (this.a == null) {
            return;
        }
        this.a.remove(b2);
        if (this.a.size() != 0) return;
        this.a = null;
    }

    public void c() {
    }

    public Object clone() {
        return this.e();
    }

    public abstract boolean d();

    public a e() {
        ArrayList<b> arrayList;
        a a2;
        int n;
        int n2;
        try {
            a2 = (a) super.clone();
            if (this.a == null) return a2;
            arrayList = this.a;
            a2.a = new ArrayList<>();
            n = arrayList.size();
            n2 = 0;
        } catch (CloneNotSupportedException var1_5) {
            throw new AssertionError();
        }
        while (n2 < n) {
            a2.a.add(arrayList.get(n2));
            ++n2;
         }
        return a2;
    }
}
