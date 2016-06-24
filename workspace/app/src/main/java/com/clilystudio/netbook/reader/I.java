package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PurchaseChapterResult;

final class I extends c<String, PurchaseChapterResult> {
    private /* synthetic */ o a;

    public I(o o2, Activity activity, String string) {
        this.a = o2;
        super(activity, string);
    }

    private static /* varargs */ PurchaseChapterResult a(String... arrstring) {
        try {
            b.a();
            PurchaseChapterResult purchaseChapterResult = b.b().a(arrstring[0], arrstring[1], 0);
            return purchaseChapterResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public void a(PurchaseChapterResult var1) {

    }
}
