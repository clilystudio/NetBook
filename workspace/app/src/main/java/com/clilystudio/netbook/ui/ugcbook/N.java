package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

final class N extends com.clilystudio.netbook.a.c {

    private UGCGuideEditBooksActivity a;

    public N(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, Activity Activity2) {
        super(Activity2, "\u6B63\u5728\u6DFB\u52A0\u4E66\u7C4D...");
        a = UGCGuideEditBooksActivity1;
    }

    private transient List a(String[][] String_2darray1) {
        String[] String_1darray2 = String_2darray1[0];
        List List4;

        try {
            List4 = com.clilystudio.netbook.api.b.b().a(String_1darray2);
        } catch (IOException IOException3) {
            IOException3.printStackTrace();
            return null;
        }
        return List4;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[][]) Object_1darray1);
    }

    public final void a(Object Object1) {
        List List2 = (List) Object1;

        if (List2 != null) {
            UGCNewCollection UGCNewCollection3 = UGCGuideEditBooksActivity.k(a);
            Iterator Iterator4 = List2.iterator();

            while (Iterator4.hasNext()) {
                BookSummary BookSummary5 = (BookSummary) Iterator4.next();

                UGCNewCollection3.addBook(BookSummary5);
                BookSummary5.setSelected(true);
            }
            UGCGuideEditBooksActivity.c(a);
        } else
            e.a((Activity) a, "\u6DFB\u52A0\u4E66\u7C4D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u91CD\u8BD5");
    }
}
