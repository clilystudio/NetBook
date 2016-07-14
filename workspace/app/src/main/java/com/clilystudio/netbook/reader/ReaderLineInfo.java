package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.am;
import com.clilystudio.netbook.util.CipherUtil;

import java.util.LinkedList;

public final class ReaderLineInfo {
    private final ReaderPageTransformer mReaderPageTransformer;
    private final ReaderChapter mReaderChapter;
    private int[] mLineStarts;
    private int mCurrStart;
    private int mCurrIndex;
    private int f;

    public ReaderLineInfo(ReaderPageTransformer readerPageTransformer, ReaderChapter readerChapter, int[] lineStarts, int currIndex) {
        this.mReaderPageTransformer = readerPageTransformer;
        this.mReaderChapter = readerChapter;
        this.mLineStarts = lineStarts;
        this.mCurrIndex = currIndex;
        this.mCurrStart = lineStarts[currIndex];
    }

    public static ReaderLineInfo a(ReaderPageTransformer readerPageTransformer, ReaderChapter readerChapter, int n2) {
        ReaderLineInfo n3 = new ReaderLineInfo(readerPageTransformer, readerChapter, new int[]{0}, 0);
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
        this.mCurrIndex = n2;
    }

    public final void a(Reader.OnPageTransListener<ReaderLineInfo> e2) {
        if (this.hasMore()) {
            if (this.isLast()) {
                this.mReaderPageTransformer.b(this.mReaderChapter.getIndex() + 1, e2, false);
            } else {
                e2.onPageTrans(new ReaderLineInfo(this.mReaderPageTransformer, this.mReaderChapter, this.mLineStarts, 1 + this.mCurrIndex));
            }
        } else {
            e2.onPageTrans(null);
        }
    }

    public final void a(String string) {
        this.mLineStarts = this.mReaderPageTransformer.getLineStarts(string);
        this.mCurrStart = this.mLineStarts[0];
    }

    public final int b() {
        return this.mLineStarts[this.mCurrIndex];
    }

    public final void b(Reader.OnPageTransListener<ReaderLineInfo> e2) {
        if (this.f()) {
            if (this.mCurrIndex > 0) {
                e2.onPageTrans(new ReaderLineInfo(this.mReaderPageTransformer, this.mReaderChapter, this.mLineStarts, -1 + this.mCurrIndex));
            } else {
                this.mReaderPageTransformer.a(-1 + this.mReaderChapter.getIndex(), e2, false);
            }
        } else {
            e2.onPageTrans(null);
        }
    }

    public final String c() {
        String string = this.mReaderChapter.getBody(this);
        if (string == null) {
            return "";
        }
        if (this.mCurrIndex > -1 + this.mLineStarts.length) {
            this.mCurrIndex = -1 + this.mLineStarts.length;
        }
        this.mCurrStart = this.mLineStarts[this.mCurrIndex];
        try {
            if (1 + this.mCurrIndex < this.mLineStarts.length) {
                return string.substring(this.mCurrStart, this.mLineStarts[1 + this.mCurrIndex]);
            }
            return string.substring(this.mCurrStart);
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
        if (this.mCurrIndex > this.mLineStarts.length - 1) {
            this.mCurrIndex = this.mLineStarts.length - 1;
        }
        this.mCurrStart = this.mLineStarts[this.mCurrIndex];
        Object[] var2_2 = new Object[2];
        String var5_7;
        String var6_4;
        if (1 + this.mCurrIndex >= this.mLineStarts.length) {
            var5_7 = var1_1.substring(this.mCurrStart);
            var6_4 = "";
        } else {
            var5_7 = var1_1.substring(this.mCurrStart, this.mLineStarts[1 + this.mCurrIndex]);
            var6_4 = var1_1.substring(this.mLineStarts[1 + this.mCurrIndex]);
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
            int var14_15 = this.mLineStarts[var13_14 + this.mCurrIndex] - this.mCurrStart;
            var12_13.add(100  * (var8_9 + var14_15) / (var8_9 + var9_10));
            var13_14++;
        } while (var13_14 + this.mCurrIndex != this.mLineStarts.length && this.mLineStarts[var13_14 + this.mCurrIndex] - this.mCurrStart < var9_10);
        var2_2[0] = var7_8;
        var2_2[1] = var12_13;
        return var2_2;
    }

    public final boolean hasMore() {
        return !this.isLast() || this.mReaderChapter.hasNext();
    }

    public final boolean f() {
        return this.mCurrIndex > 0 || this.mReaderChapter.hasPrevious();
    }

    public final void g() {
        String string = CipherUtil.a(this.mReaderChapter.getKey(), this.mReaderChapter.getContent());
        if (string == null) {
            return;
        }
        this.mLineStarts = this.mReaderPageTransformer.getLineStarts(string);
        this.mCurrStart = this.mLineStarts[0];
    }

    public final boolean isLast() {
        return this.mCurrIndex >= this.mLineStarts.length - 1;
    }

    public final String i() {
        return this.mReaderChapter.getTitle();
    }

    public final int getCurrIndex() {
        return this.mCurrIndex;
    }

    public final int k() {
        return this.mLineStarts.length;
    }

    public final int l() {
        return this.mReaderChapter.getIndex();
    }

    public final int m() {
        return this.mCurrStart;
    }

    public final int nf() {
        return this.f;
    }

    public final int getStatus() {
        return this.mReaderChapter.getStatus();
    }

    public final boolean p() {
        return this.mReaderChapter.getStatus() == 1;
    }

    public final ReaderPageTransformer getReaderPageTransformer() {
        return this.mReaderPageTransformer;
    }
}
