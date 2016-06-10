package com.clilystudio.netbook.reader.dl;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.I;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.util.e;

import uk.me.lewisdeane.ldialogs.h;

public class a {
    private Activity a;

    public a(Activity paramActivity) {
        this.a = paramActivity;
    }

    private void a(BookReadRecord paramBookReadRecord, int paramInt1, int paramInt2) {
        if (paramBookReadRecord == null) {
            e.a(this.a, "请重试");
            return;
        }
        if (!com.clilystudio.netbook.hpay100.a_Pack.a.d()) {
            e.a(this.a, "无法缓存，请检查SD卡是否挂载");
            return;
        }
        if (com.clilystudio.netbook.hpay100.a_Pack.a.f(paramBookReadRecord.getReadMode())) {
            e.b(this.a, "暂不支持当前模式缓存");
            return;
        }
        if (1 == com.clilystudio.netbook.hpay100.a_Pack.a.r(this.a)) {
            b(paramBookReadRecord, paramInt1, paramInt2);
            return;
        }
        b localb = new b(this, paramBookReadRecord, paramInt1, paramInt2);
        new h(this.a).a(2131034592).b(2131034342).a(2131034336, new c(this, localb)).b(2131034129, null).b();
    }

    private void b(BookReadRecord paramBookReadRecord, int paramInt1, int paramInt2) {
        String str = paramBookReadRecord.getBookId();
        int i = paramBookReadRecord.getReadMode();
        i.a().c(new d(str, 1));
        e.a(this.a, "已加入缓存队列");
        MyApplication.a().f().add(str);
        if (paramInt1 < 0) ;
        for (int j = 0; ; j = paramInt1) {
            BookDlRecord localBookDlRecord = BookDlRecord.get(str);
            if (localBookDlRecord == null)
                BookDlRecord.create(str, paramBookReadRecord.getTitle(), paramBookReadRecord.getAuthor(), paramBookReadRecord.getTocId(), i, j, paramInt2, 1);
            while (true) {
                i.a().c(new I());
                Intent localIntent = new Intent(this.a, BookDownloadService.class);
                this.a.startService(localIntent);
                return;
                if (localBookDlRecord.getMode() != i) {
                    BookDlRecord.update(localBookDlRecord, paramBookReadRecord.getTocId(), i, j, paramInt2, 1);
                    continue;
                }
                BookDlRecord.reset(localBookDlRecord, j, paramInt2);
            }
        }
    }

    public final void a(BookReadRecord paramBookReadRecord) {
        a(paramBookReadRecord, 0, 0);
    }

    public final void a(String paramString, int paramInt1, int paramInt2) {
        a(BookReadRecord.get(paramString), paramInt1, paramInt2);
    }
}

