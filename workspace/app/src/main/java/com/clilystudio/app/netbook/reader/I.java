package com.clilystudio.app.netbook.reader;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PurchaseChapterResult;

final class I extends c<String, PurchaseChapterResult> {
    public I(o paramo, Activity paramActivity, String paramString) {
        super(paramActivity, paramString);
    }

    private static PurchaseChapterResult a(String[] paramArrayOfString) {
        try {
            b.a();
            PurchaseChapterResult localPurchaseChapterResult = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 0);
            return localPurchaseChapterResult;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.I
 * JD-Core Version:    0.6.2
 */