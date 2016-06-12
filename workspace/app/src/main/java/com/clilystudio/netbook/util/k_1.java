package com.clilystudio.netbook.util;

import android.support.design.widget.am;

import com.clilystudio.netbook.db.BookClickRecord;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class k {

    private String a;
    private String b;
    private BookClickRecord c;
    public k(String String1) {
        a = String1;
    }

    static void a(k k1, boolean boolean2) {
        if (k1.c != null) {
            k1.c.setSendStatus(boolean2);
            k1.c.save();
        } else
            BookClickRecord.create(k1.a, k1.b, boolean2);
    }

    public final void a() {
        String String1;
        List List2;
        List List3;
        int int10;

        b = t.a(new Date());
        String1 = am.h();
        List2 = BookClickRecord.getBookClickRecords(a);
        if (List2 != null && List2.size() > 0) {
            Iterator Iterator8 = List2.iterator();

            while (Iterator8.hasNext()) {
                BookClickRecord BookClickRecord9 = (BookClickRecord) Iterator8.next();

                if (com.clilystudio.netbook.hpay100.a.a.b(b, 0) <= com.clilystudio.netbook.hpay100.a.a.b(BookClickRecord9.today_time, 0))
                    continue;
                BookClickRecord.deleteByBookId(a);
            }
        }
        List3 = BookClickRecord.getBookClickRecords(a, b);
        if (List3 != null && List3.size() > 0) {
            boolean boolean4;

            c = (BookClickRecord) List3.get(0);
            boolean4 = c.isSendStatus();
        } else
            int10 = 0;
        if (int10 == 0) {
            l l5 = new l(this, (byte) 0);
            String[] String_1darray6 = new String[3];

            String_1darray6[0] = b;
            String_1darray6[1] = String1;
            String_1darray6[2] = a;
            l5.b(String_1darray6);
        }
    }
}
