package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.util.e;

final class cJ extends com.clilystudio.netbook.a.c {

    private int a;
    private String b;
    private ReaderWebActivity c;
    public cJ(ReaderWebActivity ReaderWebActivity1, Activity Activity2, int int3, String String4) {
        super(Activity2, 2131034218);
        c = ReaderWebActivity1;
        a = int3;
        b = String4;
    }

    private transient SgTocRoot a(String[] String_1darray1) {
        SgTocRoot SgTocRoot3;

        try {
            SgTocRoot3 = com.clilystudio.netbook.api.b.b().s(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return SgTocRoot3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        SgTocRoot SgTocRoot2 = (SgTocRoot) Object1;

        if (SgTocRoot2 != null && SgTocRoot2.getBook() != null && SgTocRoot2.getChapter() != null && SgTocRoot2.getChapter().length > 0) {
            String String3 = SgTocRoot2.getBook().getMd();
            SgTocChapter[] SgTocChapter_1darray4 = SgTocRoot2.getChapter();
            SgTocChapter SgTocChapter5;

            if (a < 0 || a >= SgTocChapter_1darray4.length)
                a = 0;
            if (b != null)
                SgTocChapter5 = ReaderWebActivity.a(c, SgTocChapter_1darray4, b);
            else {
                SgTocChapter5 = SgTocChapter_1darray4[a];
                b = SgTocChapter5.getCmd();
            }
            if (SgTocChapter5 != null) {
                String String6 = SgTocChapter5.getUrl();
                String String7 = SgTocChapter5.getName();

                ReaderWebActivity.a(c, String3, b, String6, String7);
            } else
                e.a((Activity) c, "\u8F7D\u5165\u5931\u8D25");
        } else
            e.a((Activity) c, "\u8F7D\u5165\u5931\u8D25");
    }
}
