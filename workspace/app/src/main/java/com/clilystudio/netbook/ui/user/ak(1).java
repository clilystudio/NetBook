package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PurchaseVipResult;

import java.io.IOException;

final class ak extends c<String, PurchaseVipResult> {
    public ak(RemoveAdActivity paramRemoveAdActivity, Activity paramActivity, String paramString) {
        super(paramActivity, paramString);
    }

    private PurchaseVipResult a(String[] paramArrayOfString) {
        try {
            PurchaseVipResult localPurchaseVipResult = b.b().t(paramArrayOfString[0], paramArrayOfString[1]);
            return localPurchaseVipResult;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

