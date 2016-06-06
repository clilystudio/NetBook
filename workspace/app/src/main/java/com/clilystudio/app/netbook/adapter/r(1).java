package com.clilystudio.app.netbook.adapter;

import android.app.Activity;

import com.clilystudio.app.netbook.db.BookDlRecord;
import com.clilystudio.app.netbook.event.I;
import com.clilystudio.app.netbook.event.d;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.reader.dl.a;
import com.clilystudio.app.netbook.widget.y;
import com.squareup.a.b;

final class r
        implements y {
    private String a;

    public r(HomeShelfAdapter paramHomeShelfAdapter, String paramString) {
        this.a = paramString;
    }

    public final void a() {
        String str = this.a;
        i_OttoBus.a().c(new d(str, 3));
    }

    public final void b() {
        Activity localActivity = (Activity) HomeShelfAdapter.c(this.b);
        String str = this.a;
        new a(localActivity).a(str, 0, 0);
    }

    public final void c() {
        BookDlRecord localBookDlRecord = BookDlRecord.get(this.a);
        if (localBookDlRecord != null) {
            localBookDlRecord.setStatus(3);
            localBookDlRecord.save();
            i_OttoBus.a().c(new I());
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.r
 * JD-Core Version:    0.6.2
 */