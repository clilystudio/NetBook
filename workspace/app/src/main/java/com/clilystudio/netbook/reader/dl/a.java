package com.clilystudio.netbook.reader.dl;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.I;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.util.e;

import uk.me.lewisdeane.ldialogs.h;

public class a {
    private Activity a;

    public a(Activity activity) {
        this.a = activity;
    }

    static /* synthetic */ void a(a a2, BookReadRecord bookReadRecord, int n, int n2) {
        a2.b(bookReadRecord, n, n2);
    }

    private void a(BookReadRecord bookReadRecord, int n, int n2) {
        if (bookReadRecord == null) {
            e.a((Activity) this.a, (String) "\u8bf7\u91cd\u8bd5");
            return;
        }
        if (!com.clilystudio.netbook.hpay100.a.a.d()) {
            e.a((Activity) this.a, (String) "\u65e0\u6cd5\u7f13\u5b58\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d");
            return;
        }
        if (com.clilystudio.netbook.hpay100.a.a.f(bookReadRecord.getReadMode())) {
            e.b((Activity) this.a, (String) "\u6682\u4e0d\u652f\u6301\u5f53\u524d\u6a21\u5f0f\u7f13\u5b58");
            return;
        }
        if (1 == com.clilystudio.netbook.hpay100.a.a.r(this.a)) {
            this.b(bookReadRecord, n, n2);
            return;
        }
        b b2 = new b(this, bookReadRecord, n, n2);
        new h(this.a).a(R.string.zssq_tips).b(R.string.chapter_dl_net_type_msg).a(R.string.chapter_dl, (DialogInterface.OnClickListener) new c(this, b2)).b(R.string.cancel, null).b();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(BookReadRecord bookReadRecord, int n, int n2) {
        String string = bookReadRecord.getBookId();
        int n3 = bookReadRecord.getReadMode();
        i.a().c(new com.clilystudio.netbook.event.d(string, 1));
        e.a((Activity) this.a, (String) "\u5df2\u52a0\u5165\u7f13\u5b58\u961f\u5217");
        MyApplication.a().f().add(string);
        int n4 = n < 0 ? 0 : n;
        BookDlRecord bookDlRecord = BookDlRecord.get(string);
        if (bookDlRecord == null) {
            BookDlRecord.create(string, bookReadRecord.getTitle(), bookReadRecord.getAuthor(), bookReadRecord.getTocId(), n3, n4, n2, 1);
        } else if (bookDlRecord.getMode() != n3) {
            BookDlRecord.update(bookDlRecord, bookReadRecord.getTocId(), n3, n4, n2, 1);
        } else {
            BookDlRecord.reset(bookDlRecord, n4, n2);
        }
        i.a().c(new I());
        Intent intent = new Intent(this.a, BookDownloadService.class);
        this.a.startService(intent);
    }

    public final void a(BookReadRecord bookReadRecord) {
        this.a(bookReadRecord, 0, 0);
    }

    public final void a(String string, int n, int n2) {
        this.a(BookReadRecord.get(string), n, n2);
    }
}
