package com.clilystudio.app.netbook.reader;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PayBalance;

import java.io.IOException;

final class C extends c<String, PayBalance> {
    public C(o paramo, Activity paramActivity, String paramString) {
        super(paramActivity, paramString);
    }

    private static PayBalance a(String[] paramArrayOfString) {
        try {
            b.a();
            PayBalance localPayBalance = b.b().b(paramArrayOfString[0]);
            return localPayBalance;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.C
 * JD-Core Version:    0.6.2
 */