package com.clilystudio.netbook.reader;

import android.support.design.widget.am;

import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.PurchaseChapterResult;

final class J extends com.clilystudio.netbook.a.e {

    private ReaderChapter a;
    private o b;
    public J(o o1, ReaderChapter ReaderChapter2) {
        b = o1;
        a = ReaderChapter2;
    }

    private static transient PurchaseChapterResult a(String[] String_1darray1) {
        PurchaseChapterResult PurchaseChapterResult4;

        try {
            com.clilystudio.netbook.api.b.a();
            PurchaseChapterResult4 = com.clilystudio.netbook.api.b.b().a(String_1darray1[0], String_1darray1[1], 1);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return PurchaseChapterResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onCancelled() {
        super.onCancelled();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (PurchaseChapterResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((PurchaseChapterResult) Object2).isOk()) {
            o.b(b).q().a().e().put(((PurchaseChapterResult) Object2).getChapterId(), ((PurchaseChapterResult) Object2).getKey());
            com.clilystudio.netbook.hpay100.a.a.a(((ReaderActivity) o.a(b)).l(), o.b(b).q().a().e());
            if (((PurchaseChapterResult) Object2).getChapterId().equals(a.getId()))
                com.clilystudio.netbook.hpay100.a.a.a(((ReaderActivity) o.a(b)).l(), ((ReaderActivity) o.a(b)).f(), am.e(a.getLink()), (Chapter) a);
        }
    }
}
