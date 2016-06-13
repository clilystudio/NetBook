package com.clilystudio.netbook.adapter;

import android.app.Activity;

import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.event.I;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.reader.dl.a;
import com.clilystudio.netbook.widget.y;

final class r
        implements y {
    private String a;
    private /* synthetic */ HomeShelfAdapter b;

    public r(HomeShelfAdapter homeShelfAdapter, String string) {
        this.b = homeShelfAdapter;
        this.a = string;
    }

    @Override
    public final void a() {
        String string = this.a;
        i.a().c(new d(string, 3));
    }

    @Override
    public final void b() {
        Activity activity = (Activity) HomeShelfAdapter.c(this.b);
        String string = this.a;
        new a(activity).a(string, 0, 0);
    }

    @Override
    public final void c() {
        BookDlRecord bookDlRecord = BookDlRecord.get(this.a);
        if (bookDlRecord != null) {
            bookDlRecord.setStatus(3);
            bookDlRecord.save();
            i.a().c(new I());
        }
    }
}
