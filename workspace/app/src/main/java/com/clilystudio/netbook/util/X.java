package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookSyncRecord.BookModifyType;
import com.clilystudio.netbook.model.SyncUploadResult;

import java.io.IOException;

public final class X extends e<Void, Void, SyncUploadResult> {
    private final ApiService a;
    private String b;
    private String c;
    private String[] d;
    private BookSyncRecord.BookModifyType e;

    public X(String paramString1, String paramString2, BookSyncRecord.BookModifyType paramBookModifyType, String[] paramArrayOfString) {
        this.b = paramString1;
        this.c = paramString2;
        this.e = paramBookModifyType;
        this.d = paramArrayOfString;
        b.a();
        this.a = b.b();
    }

    private String a() {
        if ((this.d == null) || (this.d.length == 0))
            return "";
        StringBuffer localStringBuffer = new StringBuffer(this.d[0]);
        for (int i = 1; i < this.d.length; i++)
            localStringBuffer.append("," + this.d[i]);
        return localStringBuffer.toString();
    }

    private SyncUploadResult b() {
        try {
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
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

