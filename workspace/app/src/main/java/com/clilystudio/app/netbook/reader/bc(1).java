package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;

import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.reader.dl.a;

final class bc
        implements DialogInterface.OnClickListener {
    bc(ReaderActivity paramReaderActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        int i = 1;
        int j = ReaderActivity.Y(this.a).k();
        if (paramInt == 0) {
            ReaderActivity.k(this.a, 50);
            if (BookReadRecord.getOnShelf(ReaderActivity.M(this.a)) == null)
                break label185;
        }
        while (true) {
            if (i == 0)
                ReaderActivity.ad(this.a);
            ReaderActivity.ah(this.a).setVisibility(0);
            a locala = new a(this.a);
            MyApplication.a_getInstance().e().put(ReaderActivity.M(this.a), ReaderActivity.Y(this.a).d());
            locala.a(ReaderActivity.M(this.a), j, ReaderActivity.ai(this.a));
            return;
            if (paramInt == i) {
                ReaderActivity.k(this.a, ReaderActivity.Y(this.a).f() - j);
                break;
            }
            if (paramInt != 2)
                break;
            ReaderActivity.k(this.a, ReaderActivity.Y(this.a).f());
            j = 0;
            break;
            label185:
            i = 0;
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bc
 * JD-Core Version:    0.6.2
 */