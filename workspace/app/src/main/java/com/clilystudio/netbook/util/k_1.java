package com.clilystudio.netbook.util;

import android.support.design.widget.am;

import com.clilystudio.netbook.db.BookClickRecord;

import java.util.Date;
import java.util.List;

public final class k {
    private String a;
    private String b;
    private BookClickRecord c;

    public k(String string) {
        this.a = string;
    }

    static /* synthetic */ void a(k k2, boolean bl) {
        if (k2.c != null) {
            k2.c.setSendStatus(bl);
            k2.c.save();
            return;
        }
        BookClickRecord.create(k2.a, k2.b, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        boolean bl;
        List<BookClickRecord> list;
        this.b = t.a(new Date());
        String string = am.h();
        List<BookClickRecord> list2 = BookClickRecord.getBookClickRecords(this.a);
        if (list2 != null && list2.size() > 0) {
            for (BookClickRecord bookClickRecord : list2) {
                if (a.b(this.b, 0) <= a.b(bookClickRecord.today_time, 0)) continue;
                BookClickRecord.deleteByBookId(this.a);
            }
        }
        if ((list = BookClickRecord.getBookClickRecords(this.a, this.b)) != null && list.size() > 0) {
            this.c = list.get(0);
            bl = this.c.isSendStatus();
        } else {
            bl = false;
        }
        if (!bl) {
            l l2 = new l(this, 0);
            String[] arrstring = new String[]{this.b, string, this.a};
            l2.b(arrstring);
        }
    }
}
