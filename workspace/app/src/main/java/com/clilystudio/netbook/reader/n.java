package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.am;
import com.clilystudio.netbook.util.CipherUtil;

import java.util.LinkedList;

public final class n {
    private final ReaderPageTransformer a;
    private final ReaderChapter mReaderChapter;
    private int[] c;
    private int d;
    private int e;
    private int f;

    public n(ReaderPageTransformer k, ReaderChapter readerChapter, int[] arrn, int n2) {
        this.a = k;
        this.mReaderChapter = readerChapter;
        this.c = arrn;
        this.e = n2;
        this.d = arrn[n2];
    }

    public static n a(ReaderPageTransformer k, ReaderChapter readerChapter, int n2) {
        n n3 = new n(k, readerChapter, new int[]{0}, 0);
        n3.f = n2;
        return n3;
    }

    public final ReaderChapter a() {
        return this.mReaderChapter;
    }

    public final String a(Context context) {
        return am.b(context, this.c());
    }

    public final void a(int n2) {
        this.e = n2;
    }

    public final void a(e<n> e2) {
        if (this.e()) {
            if (this.h()) {
                this.a.b(1 + this.mReaderChapter.getIndex(), e2, false);
                return;
            }
            e2.a(new n(this.a, this.mReaderChapter, this.c, 1 + this.e));
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
                e2.a(new n(this.a, this.mReaderChapter, this.c, -1 + this.e));
                return;
            }
            this.a.a(-1 + this.mReaderChapter.getIndex(), e2, false);
            return;
        }
        e2.a(null);
    }

    public final String c() {
        String string = this.mReaderChapter.getBody(this);
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
            return string.substring(this.d);
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return "";
        }
    }

    public final Object[] d() {
        String var1_1 = this.mReaderChapter.getBody(this);
        if (var1_1 == null) {
            return null;
        }
        if (this.e > this.c.length - 1) {
            this.e = this.c.length - 1;
        }
        this.d = this.c[this.e];
        Object[] var2_2 = new Object[2];
        String var5_7;
        String var6_4;
        if (1 + this.e >= this.c.length) {
            var5_7 = var1_1.substring(this.d);
            var6_4 = "";
        } else {
            var5_7 = var1_1.substring(this.d, this.c[1 + this.e]);
            var6_4 = var1_1.substring(this.c[1 + this.e]);
            int var18_5 = var6_4.indexOf("\n");
            if (var18_5 != -1) {
                var6_4 = var6_4.substring(0, var18_5);
            }
            if (var6_4.startsWith("　　")){
                var6_4 = "";
            }
        }
        String[] var7_8 = var5_7.split("\n");
        int var8_9 = var7_8[-1 + var7_8.length].length();
        int var9_10 = var6_4.length();
        StringBuilder  var10_11 = new StringBuilder();
        int var11_12 = var7_8.length-1;
        var7_8[var11_12] = var10_11.append(var7_8[var11_12]).append(var6_4).toString();
        LinkedList<Integer>  var12_13 = new LinkedList<>();
        int var13_14 = 0;
        do {
            int var14_15 = this.c[var13_14 + this.e] - this.d;
            var12_13.add(100  * (var8_9 + var14_15) / (var8_9 + var9_10));
            var13_14++;
        } while (var13_14 + this.e != this.c.length && this.c[var13_14 + this.e] - this.d < var9_10);
        var2_2[0] = var7_8;
        var2_2[1] = var12_13;
        return var2_2;
    }

    public final boolean e() {
        return !this.h() || this.mReaderChapter.hasNext();
    }

    public final boolean f() {
        return this.e > 0 || this.mReaderChapter.hasPrevious();
    }

    public final void g() {
        String string = CipherUtil.a(this.mReaderChapter.getKey(), this.mReaderChapter.getContent());
        if (string == null) {
            return;
        }
        this.c = this.a.a(string);
        this.d = this.c[0];
    }

    public final boolean h() {
        return 1 + this.e >= this.c.length;
    }

    public final String i() {
        return this.mReaderChapter.getTitle();
    }

    public final int j() {
        return this.e;
    }

    public final int k() {
        return this.c.length;
    }

    public final int l() {
        return this.mReaderChapter.getIndex();
    }

    public final int m() {
        return this.d;
    }

    public final int nf() {
        return this.f;
    }

    public final int o() {
        return this.mReaderChapter.getStatus();
    }

    public final boolean p() {
        return this.mReaderChapter.getStatus() == 1;
    }

    public final ReaderPageTransformer q() {
        return this.a;
    }
}
