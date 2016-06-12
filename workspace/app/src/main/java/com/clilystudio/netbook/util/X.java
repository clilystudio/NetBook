package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.BookSyncRecord$BookModifyType;
import com.clilystudio.netbook.model.SyncUploadResult;

import java.io.IOException;

public final class X extends com.clilystudio.netbook.a.e {

    private ApiService a;     // final access specifier removed
    private String b;
    private String c;
    private String[] d;
    private BookSyncRecord$BookModifyType e;
    public transient X(String String1, String String2, BookSyncRecord$BookModifyType BookModifyType3, String[] String_1darray4) {
        b = String1;
        c = String2;
        e = BookModifyType3;
        d = String_1darray4;
        com.clilystudio.netbook.api.b.a();
        a = com.clilystudio.netbook.api.b.b();
    }

    private String a() {
        if (d == null || d.length == 0)
            return "";
        else {
            StringBuffer StringBuffer1 = new StringBuffer(d[0]);
            int int2;

            for (int2 = 1; int2 < d.length; ++int2)
                StringBuffer1.append(new StringBuilder(",").append(d[int2]).toString());
            return StringBuffer1.toString();
        }
    }

    private transient SyncUploadResult b() {
        try {
            switch (Y.a[e.ordinal()]) {
                case 1:
                    return a.G(c, a());
                case 2:
                    return a.I(c, a());
                case 3:
                    return a.H(c, a());
                case 4:
                    SyncUploadResult SyncUploadResult2 = a.J(c, a());

                    break;
                default:
                    break;
            }
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return b();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (SyncUploadResult) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((SyncUploadResult) Object2).isOk()) {
            String[] String_1darray3 = d;
            int int4 = String_1darray3.length;
            int int5;

            for (int5 = 0; int5 < int4; ++int5) {
                String String6 = String_1darray3[int5];

                BookSyncRecord.updateOrCreate(b, String6, BookSyncRecord.getTypeId(BookSyncRecord$BookModifyType.SYNC_SUCCESS));
            }
        }
    }
}
