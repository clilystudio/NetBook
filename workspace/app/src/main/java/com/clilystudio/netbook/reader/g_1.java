package com.clilystudio.netbook.reader;

import android.text.Html;

import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsTocRow;

import java.io.IOException;

final class g implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ int b;
    private /* synthetic */ ChapterLink[][] c;
    private /* synthetic */ f d;

    g(f f2, int n, int n2, ChapterLink[][] arrchapterLink) {
        this.d = f2;
        this.a = n;
        this.b = n2;
        this.c = arrchapterLink;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final void run() {
        SsTocRow[] arrssTocRow;
        try {
            SsTocRoot ssTocRoot;
            SsTocRoot ssTocRoot2 = ssTocRoot = b.b().a(this.a, this.b, f.a(this.d));
            if (ssTocRoot2 == null || ssTocRoot2.getRows() == null) return;
            arrssTocRow = ssTocRoot2.getRows();
        } catch (IOException var1_3) {
            var1_3.printStackTrace();
            return;
        }
        ChapterLink[] arrchapterLink = new ChapterLink[arrssTocRow.length];
        for (int i = 0; i < arrssTocRow.length; ++i) {
            SsTocRow ssTocRow = arrssTocRow[i];
            ChapterLink chapterLink = new ChapterLink();
            chapterLink.setTitle(String.valueOf(Html.fromHtml(ssTocRow.getSerialname())));
            chapterLink.setLink(String.valueOf(ssTocRow.getSerialid()));
            arrchapterLink[i] = chapterLink;
        }
        this.c[-1 + this.a] = arrchapterLink;
    }
}
