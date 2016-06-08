package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChargeTypes;

import java.io.IOException;

final class r extends c<Void, ChargeTypes> {
    public r(p paramp, Activity paramActivity) {
        super(paramActivity);
    }

    private static ChargeTypes a() {
        try {
            b.a();
            ChargeTypes localChargeTypes = b.b().c();
            return localChargeTypes;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

