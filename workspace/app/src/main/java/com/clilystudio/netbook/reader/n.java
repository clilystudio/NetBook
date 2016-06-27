package com.clilystudio.netbook.reader;

import android.content.Context;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.util.CipherUtil;

import java.util.LinkedList;

public final class n {
    private final K a;
    private final ReaderChapter b;
    private int[] c;
    private int d;
    private int e;
    private int f;

    public n(K k, ReaderChapter readerChapter, int[] arrn, int n2) {
        this.a = k;
        this.b = readerChapter;
        this.c = arrn;
        this.e = n2;
        this.d = arrn[n2];
    }

    public static n a(K k, ReaderChapter readerChapter, int n2) {
        n n3 = new n(k, readerChapter, new int[]{0}, 0);
        n3.f = n2;
        return n3;
    }

    public final ReaderChapter a() {
        return this.b;
    }

    public final String a(Context context) {
        return am.b(context, this.c());
    }

    public final void a(int n2) {
        this.e = 0;
    }

    public final void a(e<n> e2) {
        if (this.e()) {
            if (this.h()) {
                this.a.b(1 + this.b.getIndex(), e2, false);
                return;
            }
            e2.a(new n(this.a, this.b, this.c, 1 + this.e));
            return;
        }
        e2.a(null);
    }

    public final void a(String string) {
        this.c = this.a.a(string);
        this.d = this.c[0];
    }

    public final int b() {
        return this.c[this.e];
    }

    public final void b(e<n> e2) {
        if (this.f()) {
            if (this.e > 0) {
                e2.a(new n(this.a, this.b, this.c, -1 + this.e));
                return;
            }
            this.a.a(-1 + this.b.getIndex(), e2, false);
            return;
        }
        e2.a(null);
    }

    public final String c() {
        String string = this.b.getBody(this);
        if (string == null) {
            return "";
        }
        if (this.e > -1 + this.c.length) {
            this.e = -1 + this.c.length;
        }
        this.d = this.c[this.e];
        try {
            if (1 + this.e < this.c.length) {
                return string.substring(this.d, this.c[1 + this.e]);
            }
            String string2 = string.substring(this.d);
            return string2;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return "";
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public final Object[] d() {
        var1_1 = this.b.getBody(this);
        if (var1_1 == null) {
            return null;
        }
        if (this.e > -1 + this.c.length) {
            this.e = -1 + this.c.length;
        }
        this.d = this.c[this.e];
        var2_2 = new Object[2];
        try {
            if (1 + this.e >= this.c.length)**GOTO lbl17
            var17_3 = var1_1.substring(this.d, this.c[1 + this.e]);
            var6_4 = var1_1.substring(this.c[1 + this.e]);
            var18_5 = var6_4.indexOf("\n");
            if (var18_5 != -1) {
                var6_4 = var6_4.substring(0, var18_5);
            }
            if (var6_4.startsWith("\u3000\u3000"))**GOTO lbl20
            **GOTO lbl21
            lbl17:
            // 1 sources:
            var5_7 = var4_6 = var1_1.substring(this.d);
            var6_4 = "";
            **GOTO lbl22
            lbl20:
            // 1 sources:
            var6_4 = "";
            lbl21:
            // 2 sources:
            var5_7 = var17_3;
            lbl22:
            // 2 sources:
            var7_8 = var5_7.split("\n");
            var8_9 = var7_8[-1 + var7_8.length].length();
            var9_10 = var6_4.length();
            var10_11 = new StringBuilder();
            var11_12 = -1 + var7_8.length;
            var7_8[var11_12] = var10_11.append(var7_8[var11_12]).append(var6_4).toString();
            var12_13 = new LinkedList<Integer>();
            var13_14 = 0;
            do {
                var14_15 = this.c[var13_14 + this.e] - this.d;
                var15_16 = new Object[]{Float.valueOf(((float) var8_9 + (float) var14_15) / (float) (var8_9 + var9_10))};
                var12_13.add((int) (100.0f * Float.parseFloat(String.format("%.2f", var15_16))));
            } while (++var13_14 + this.e != this.c.length && this.c[var13_14 + this.e] - this.d < var9_10);
            var2_2[0] = var7_8;
            var2_2[1] = var12_13;
            return var2_2;
        } catch (Exception var3_17) {
            var3_17.printStackTrace();
            return var2_2;
        }
    }

    public final boolean e() {
        if (!this.h() || this.b.hasNext()) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        if (this.e > 0 || this.b.hasPrevious()) {
            return true;
        }
        return false;
    }

    public final void g() {
        String string = CipherUtil.a(this.b.getKey(), this.b.getContent());
        if (string == null) {
            return;
        }
        this.c = this.a.a(string);
        this.d = this.c[0];
    }

    public final boolean h() {
        if (1 + this.e >= this.c.length) {
            return true;
        }
        return false;
    }

    public final String i() {
        return this.b.getTitle();
    }

    public final int j() {
        return this.e;
    }

    public final int k() {
        return this.c.length;
    }

    public final int l() {
        return this.b.getIndex();
    }

    public final int m() {
        return this.d;
    }

    public final int n() {
        return this.f;
    }

    public final int o() {
        return this.b.getStatus();
    }

    public final boolean p() {
        if (this.b.getStatus() == 1) {
            return true;
        }
        return false;
    }

    public final K q() {
        return this.a;
    }
}
