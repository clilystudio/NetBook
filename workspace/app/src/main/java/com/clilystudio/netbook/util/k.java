package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.db.BookClickRecord;
import com.clilystudio.netbook.model.ResultStatus;

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
                if (com.clilystudio.netbook.hpay100.a.a.b(this.b, 0) <= com.clilystudio.netbook.hpay100.a.a.b(bookClickRecord.today_time, 0)) continue;
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
            BaseAsyncTask<String, Void, ResultStatus> l2 = new BaseAsyncTask<String, Void, ResultStatus>(){

                @Override
                protected ResultStatus doInBackground(String... params) {
                    com.clilystudio.netbook.api.b.a();
                    return com.clilystudio.netbook.api.b.b().n(params[0], params[1], params[2]);
                }

                @Override
                protected void onPostExecute(ResultStatus resultStatus) {
                    super.onPostExecute(resultStatus);
                    if (resultStatus != null && resultStatus.isOk()) {
                        k.a(k.this, true);
                        return;
                    }
                    k.a(k.this, false);

                }
            };
            String[] arrstring = new String[]{this.b, string, this.a};
            l2.b(arrstring);
        }
    }
}
