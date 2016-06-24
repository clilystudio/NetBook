package com.clilystudio.netbook.reader;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

import java.util.ArrayList;

public final class K {
    private Reader a;
    private bZ b;

    public K(Reader reader, bZ bZ2) {
        this.a = reader;
        this.b = bZ2;
    }

    static /* synthetic */ n a(K k, ReaderChapter readerChapter, int n2) {
        return n.a((K) k, (ReaderChapter) readerChapter, (int) n2);
    }

    private void a(int n2, final int n31, final e<n> e2, boolean bl, final int n4) {
//        L(this, e2, n4, n3)
        this.a.a(n2, new e<ReaderChapter>(){

            @Override
            public void a(ReaderChapter readerChapter) {
                if (readerChapter.getStatus() != 1) {
                    e2.a(K.a(K.this, readerChapter, n4));
                    return;
                }
                int[] arrn = K.this.a(readerChapter.getBody());
                int n2 = n31;
                int n3 = 0;
                if (n2 != 0) {
                    if (n31 == -1) {
                        n3 = -1 + arrn.length;
                    } else {
                        int n4 = -1 + arrn.length;
                        do {
                            n3 = 0;
                            if (n4 == 0) break;
                            if (n31 >= arrn[n4]) {
                                n3 = n4;
                                break;
                            }
                            --n4;
                        } while (true);
                    }
                }
                e2.a(new n(K.this, readerChapter, arrn, n3));
            }
        }, false, bl);
    }

    public final Reader a() {
        return this.a;
    }

    public final void a(int n2, int n3, e<n> e2, boolean bl) {
        this.a(n2, n3, e2, true, 1);
    }

    public final void a(int n2, e<n> e2, boolean bl) {
        this.a(n2, -1, e2, bl, 2);
    }

    public final void a(Reader reader) {
        this.a = reader;
    }

    public final void a(e<n> e2) {
        this.a(this.a.k(), this.a.l(), e2, true, 0);
    }

    public final void a(e<n> e2, int n2) {
        ReaderChapter readerChapter = new ReaderChapter();
        readerChapter.setStatus(n2);
        e2.a((Object) n.a((K) this, (ReaderChapter) readerChapter, (int) 0));
    }

    public final int[] a(String string) {
        int n2;
        int n3 = 0;
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(this.b.a);
        StaticLayout staticLayout = new StaticLayout(string, textPaint, this.b.f, Layout.Alignment.ALIGN_NORMAL, 1.0f, this.b.b, false);
        staticLayout.draw(new Canvas());
        int n4 = staticLayout.getLineCount();
        int n5 = this.b.e;
        ArrayList<Integer> arrayList = new ArrayList<Integer>();
        int n6 = 0;
        do {
            int n7;
            int n8;
            if (staticLayout.getLineBottom(n2 = staticLayout.getLineForVertical(staticLayout.getLineTop(n7 = staticLayout.getLineForVertical(n6)) + this.b.e)) - staticLayout.getLineTop(n7) > n5) {
                --n2;
            }
            if (string.substring(n8 = staticLayout.getLineStart(n7), staticLayout.getLineEnd(n2)).length() <= 0) continue;
            if (arrayList.isEmpty() || n8 != (Integer) arrayList.get(-1 + arrayList.size())) {
                arrayList.add(n8);
            }
            n6 = staticLayout.getLineBottom(n2);
        } while (n2 < n4 - 1);
        int[] arrn = new int[arrayList.size()];
        int n9 = arrn.length;
        while (n3 < n9) {
            arrn[n3] = (Integer) arrayList.get(n3);
            ++n3;
        }
        return arrn;
    }

    public final void b(int n2, e<n> e2, boolean bl) {
        this.a(n2, 0, e2, bl, 1);
    }
}
