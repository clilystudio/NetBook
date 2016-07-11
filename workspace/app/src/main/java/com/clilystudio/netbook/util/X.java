package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.model.SyncUploadResult;

public final class X extends BaseAsyncTask<Void, Void, SyncUploadResult> {
    private final ApiService a;
    private String b;
    private String c;
    private String[] d;
    private BookSyncRecord.BookModifyType e;

    public X(String string, String string2, BookSyncRecord.BookModifyType bookModifyType, String... arrstring) {
        this.b = string;
        this.c = string2;
        this.e = bookModifyType;
        this.d = arrstring;
        com.clilystudio.netbook.api.b.a();
        this.a = com.clilystudio.netbook.api.b.b();
    }

    private String a() {
        if (this.d == null || this.d.length == 0) {
            return "";
        }
        StringBuilder stringBuffer = new StringBuilder(this.d[0]);
        for (int i = 1; i < this.d.length; ++i) {
            stringBuffer.append(",").append(this.d[i]);
        }
        return stringBuffer.toString();
    }

    private SyncUploadResult b() {
        if (this.e == BookSyncRecord.BookModifyType.SHELF_ADD) {
            return this.a.G(this.c, a());
        } else if (this.e == BookSyncRecord.BookModifyType.SHELF_REMOVE) {
            return this.a.I(this.c, a());
        } else if (this.e == BookSyncRecord.BookModifyType.FEED_ADD) {
            return this.a.H(this.c, a());
        } else if (this.e == BookSyncRecord.BookModifyType.FEED_REMOVE) {
             return this.a.J(this.c, a());
        } else {
            return  null;
        }
    }

    @Override
    protected final /* synthetic */ SyncUploadResult doInBackground(Void[] var1_1) {
        return this.b();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(SyncUploadResult syncUploadResult) {
        super.onPostExecute(syncUploadResult);
        if (syncUploadResult != null && syncUploadResult.isOk()) {
            for (String string : this.d) {
                BookSyncRecord.updateOrCreate(this.b, string, BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.SYNC_SUCCESS));
            }
        }
    }
}
