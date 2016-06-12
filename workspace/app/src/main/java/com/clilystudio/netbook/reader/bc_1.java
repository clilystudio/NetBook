package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;

final class bc implements DialogInterface$OnClickListener {

    private ReaderActivity a;

    bc(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        int int3 = 1;
        int int4 = ReaderActivity.Y(a).k();
        com.clilystudio.netbook.reader.dl.a a6;

        if (int2 == 0)
            ReaderActivity.k(a, 50);
        else if (int2 == int3)
            ReaderActivity.k(a, ReaderActivity.Y(a).f() - int4);
        else if (int2 == 2) {
            ReaderActivity.k(a, ReaderActivity.Y(a).f());
            int4 = 0;
        }
        if (BookReadRecord.getOnShelf(ReaderActivity.M(a)) == null)
            int3 = 0;
        if (int3 == 0)
            ReaderActivity.ad(a);
        ReaderActivity.ah(a).setVisibility(0);
        a6 = new com.clilystudio.netbook.reader.dl.a((Activity) a);
        MyApplication.a().e().put(ReaderActivity.M(a), ReaderActivity.Y(a).d());
        a6.a(ReaderActivity.M(a), int4, ReaderActivity.ai(a));
    }
}
