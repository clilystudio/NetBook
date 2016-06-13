package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.reader.dl.a;

final class bc
        implements DialogInterface.OnClickListener {
    private /* synthetic */ ReaderActivity a;

    bc(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onClick(DialogInterface dialogInterface, int n2) {
        int n3 = 1;
        int n4 = ReaderActivity.Y(this.a).k();
        if (n2 == 0) {
            ReaderActivity.k(this.a, 50);
        } else if (n2 == n3) {
            ReaderActivity.k(this.a, ReaderActivity.Y(this.a).f() - n4);
        } else if (n2 == 2) {
            ReaderActivity.k(this.a, ReaderActivity.Y(this.a).f());
            n4 = 0;
        }
        if (BookReadRecord.getOnShelf(ReaderActivity.M(this.a)) == null) {
            n3 = 0;
        }
        if (n3 == 0) {
            ReaderActivity.ad(this.a);
        }
        ReaderActivity.ah(this.a).setVisibility(0);
        a a2 = new a(this.a);
        MyApplication.a().e().put(ReaderActivity.M(this.a), ReaderActivity.Y(this.a).d());
        a2.a(ReaderActivity.M(this.a), n4, ReaderActivity.ai(this.a));
    }
}
