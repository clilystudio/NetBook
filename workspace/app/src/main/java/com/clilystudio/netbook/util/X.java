package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.model.SyncUploadResult;

public final class X extends e<Void, Void, SyncUploadResult> {
    private final ApiService a;
    private String b;
    private String c;
    private String[] d;
    private BookSyncRecord.BookModifyType e;

    public /* varargs */ X(String string, String string2, BookSyncRecord.BookModifyType bookModifyType, String... arrstring) {
        this.b = string;
        this.c = string2;
        this.e = bookModifyType;
        this.d = arrstring;
        b.a();
        this.a = b.b();
    }

    private String a() {
        if (this.d == null || this.d.length == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(this.d[0]);
        for (int i = 1; i < this.d.length; ++i) {
            stringBuffer.append("," + this.d[i]);
        }
        return stringBuffer.toString();
    }

    private /* varargs */ SyncUploadResult b() {
        switch (Y.a[this.e.ordinal()]) {
            case 1:
                return this.a.G(this.c, a());
            case 2:
                return this.a.I(this.c, a());
            case 3:
                return this.a.H(this.c, a());
            case 4:
                SyncUploadResult localSyncUploadResult = this.a.J(this.c, a());
                return localSyncUploadResult;
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        SyncUploadResult syncUploadResult = (SyncUploadResult) object;
        super.onPostExecute(syncUploadResult);
        if (syncUploadResult != null && syncUploadResult.isOk()) {
            for (String string : this.d) {
                BookSyncRecord.updateOrCreate(this.b, string, BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.SYNC_SUCCESS));
            }
        }
    }
}
