package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.am;

import com.clilystudio.netbook.util.I;

final class p implements e<ReaderChapter> {
    private /* synthetic */ o a;

    p(o o2) {
        this.a = o2;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        ReaderChapter readerChapter = (ReaderChapter) object;
        if (readerChapter != null && this.a.a(readerChapter)) {
            b.a(o.a(this.a), "paying_page_auto_purchase", I.b);
            J j = new J(this.a, readerChapter);
            String[] arrstring = new String[]{am.e().getToken(), readerChapter.getId()};
            j.b(arrstring);
        }
    }
}
