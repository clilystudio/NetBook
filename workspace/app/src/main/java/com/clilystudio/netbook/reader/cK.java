package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;

final class cK extends c<String, String> {
    private int a;

    public cK(ReaderWebActivity paramReaderWebActivity, Activity paramActivity, int paramInt) {
        super(paramActivity, 2131034218);
        this.a = paramInt;
    }

    private String a(String[] paramArrayOfString) {
        try {
            String str = b.b().b(paramArrayOfString[0], this.a);
            return str;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

