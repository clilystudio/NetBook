package com.clilystudio.netbook.reader;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

import java.util.ArrayList;

public final class ReaderPageTransformer {
    private Reader mReader;
    private ReaderStyle mReaderStyle;

    public ReaderPageTransformer(Reader reader, ReaderStyle readerStyle) {
        this.mReader = reader;
        this.mReaderStyle = readerStyle;
    }

    private void a(int n2, final int n31, final e<n> e2, boolean bl, final int n4) {
        this.mReader.a(n2, new e<ReaderChapter>(){

            @Override
            public void a(ReaderChapter readerChapter) {
                if (readerChapter.getStatus() != 1) {
                    e2.a(n.a(ReaderPageTransformer.this, readerChapter, n4));
                    return;
                }
                int[] lineStarts = ReaderPageTransformer.this.getLineStarts(readerChapter.getBody());
                int n3 = 0;
                if (n31 != 0) {
                    if (n31 == -1) {
                        n3 = lineStarts.length - 1;
                    } else {
                        int n4 = lineStarts.length - 1;
                        do {
                            n3 = 0;
                            if (n4 == 0) break;
                            if (n31 >= lineStarts[n4]) {
                                n3 = n4;
                                break;
                            }
                            --n4;
                        } while (true);
                    }
                }
                e2.a(new n(ReaderPageTransformer.this, readerChapter, lineStarts, n3));
            }
        }, false, bl);
    }

    public final Reader a() {
        return this.mReader;
    }

    public final void a(int n2, int n3, e<n> e2, boolean bl) {
        this.a(n2, n3, e2, bl, 1);
    }

    public final void a(int n2, e<n> e2, boolean bl) {
        this.a(n2, -1, e2, bl, 2);
    }

    public final void setReader(Reader reader) {
        this.mReader = reader;
    }

    public final void a(e<n> e2) {
        this.a(this.mReader.k(), this.mReader.l(), e2, true, 0);
    }

    public final void a(e<n> e2, int n2) {
        ReaderChapter readerChapter = new ReaderChapter();
        readerChapter.setStatus(n2);
        e2.a(n.a(this, readerChapter, 0));
    }

    public final int[] getLineStarts(String string) {
        int n2;
        int n3 = 0;
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(this.mReaderStyle.textSize);
        StaticLayout staticLayout = new StaticLayout(string, textPaint, this.mReaderStyle.width, Layout.Alignment.ALIGN_NORMAL, 1.0f, this.mReaderStyle.lineSpacing, false);
        staticLayout.draw(new Canvas());
        int n4 = staticLayout.getLineCount();
        int n5 = this.mReaderStyle.e;
        ArrayList<Integer> arrayList = new ArrayList<>();
        int n6 = 0;
        do {
            int n7;
            int n8;
            n7 = staticLayout.getLineForVertical(n6);
            n2 = staticLayout.getLineForVertical(staticLayout.getLineTop(n7) + this.mReaderStyle.e);
            if (staticLayout.getLineBottom(n2) - staticLayout.getLineTop(n7) > n5) {
                n2--;
            }
            n8 = staticLayout.getLineStart(n7);
            if (string.substring(n8, staticLayout.getLineEnd(n2)).length() <= 0) continue;
            if (arrayList.isEmpty() || n8 != arrayList.get(-1 + arrayList.size())) {
                arrayList.add(n8);
            }
            n6 = staticLayout.getLineBottom(n2);
        } while (n2 < n4 - 1);
        int[] arrn = new int[arrayList.size()];
        int n9 = arrn.length;
        while (n3 < n9) {
            arrn[n3] = arrayList.get(n3);
            ++n3;
        }
        return arrn;
    }

    public final void b(int n2, e<n> e2, boolean bl) {
        this.a(n2, 0, e2, bl, 1);
    }
}
