package com.clilystudio.netbook.adapter;

import android.app.Activity;

import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.event.I;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.widget.y;

final class r implements y {

    private String a;
    private HomeShelfAdapter b;
    public r(HomeShelfAdapter HomeShelfAdapter1, String String2) {
        b = HomeShelfAdapter1;
        a = String2;
    }

    public final void a() {
        String String1 = a;

        i.a().c(new d(String1, 3));
    }

    public final void b() {
        Activity Activity1 = (Activity) HomeShelfAdapter.c(b);
        String String2 = a;

        new com.clilystudio.netbook.reader.dl.a(Activity1).a(String2, 0, 0);
    }

    public final void c() {
        BookDlRecord BookDlRecord1 = BookDlRecord.get(a);

        if (BookDlRecord1 != null) {
            BookDlRecord1.setStatus(3);
            BookDlRecord1.save();
            i.a().c(new I());
        }
    }
}
