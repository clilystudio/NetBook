package com.clilystudio.netbook.reader.dl;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.DownloadProgressEvent;
import com.clilystudio.netbook.event.DownloadStatusEvent;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.util.e;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class a {
    private Activity a;

    public a(Activity activity) {
        this.a = activity;
    }

    static /* synthetic */ void a1(a a2, BookReadRecord bookReadRecord, int n, int n2) {
        a2.b(bookReadRecord, n, n2);
    }

    private void a(final BookReadRecord bookReadRecord, final int n, final int n2) {
        if (bookReadRecord == null) {
            e.a((Activity) this.a, (String) "请重试");
            return;
        }
        if (!com.clilystudio.netbook.hpay100.a.a.d()) {
            e.a((Activity) this.a, (String) "无法缓存，请检查SD卡是否挂载");
            return;
        }
        if (com.clilystudio.netbook.hpay100.a.a.f(bookReadRecord.getReadMode())) {
            e.b((Activity) this.a, (String) "暂不支持当前模式缓存");
            return;
        }
        if (1 == com.clilystudio.netbook.hpay100.a.a.r(this.a)) {
            this.b(bookReadRecord, n, n2);
            return;
        }
        final d b2 = new d() {

            @Override
            public void a() {
                a1(a.this, bookReadRecord, n, n2);
            }
        };

        new BaseDialog.Builder(this.a).setTitle(R.string.zssq_tips).setMessage(R.string.chapter_dl_net_type_msg).setPositiveButton(R.string.chapter_dl, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                b2.a();
            }
        }).setNegativeButton(R.string.cancel, null).show();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b(BookReadRecord bookReadRecord, int n, int n2) {
        String string = bookReadRecord.getBookId();
        int n3 = bookReadRecord.getReadMode();
        i.a().post(new DownloadStatusEvent(string, 1));
        e.a((Activity) this.a,  "已加入缓存队列");
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
        i.a().post(new DownloadProgressEvent());
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
