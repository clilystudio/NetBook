package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.mixtoc.EsTocItem;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.util.e;

final class cI extends c {

    private int a;
    private ReaderWebActivity b;
    public cI(ReaderWebActivity ReaderWebActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034218);
        b = ReaderWebActivity1;
        a = int3;
    }

    private transient EsTocRoot a(String[] String_1darray1) {
        EsTocRoot EsTocRoot3;

        try {
            EsTocRoot3 = com.clilystudio.netbook.api.b.b().v(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return EsTocRoot3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        EsTocRoot EsTocRoot2 = (EsTocRoot) Object1;

        if (EsTocRoot2 != null && EsTocRoot2.getItems() != null && EsTocRoot2.getItems().length > 0) {
            EsTocItem[] EsTocItem_1darray3 = EsTocRoot2.getItems();
            EsTocItem EsTocItem4;

            if (a < 0 || a >= EsTocItem_1darray3.length)
                a = 0;
            EsTocItem4 = EsTocItem_1darray3[a];
            ReaderWebActivity.a(b, 1 + a, EsTocItem4.getCurl());
        } else
            e.a((Activity) b, "\u8F7D\u5165\u5931\u8D25");
    }
}
