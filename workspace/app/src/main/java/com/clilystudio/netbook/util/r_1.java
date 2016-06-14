package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChargeType;
import com.clilystudio.netbook.model.ChargeTypes;

import java.io.IOException;

final class r
        extends c<Void, ChargeTypes> {
    private /* synthetic */ p a;

    public r(p p2, Activity activity) {
        this.a = p2;
        super(activity);
    }

    private static /* varargs */ ChargeTypes a() {
        try {
            b.a();
            ChargeTypes chargeTypes = b.b().c();
            return chargeTypes;
        } catch (IOException var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        ChargeTypes chargeTypes = (ChargeTypes) object;
        if (chargeTypes != null && chargeTypes.isOk() && chargeTypes.getTypes() != null) {
            ChargeType[] arrchargeType = chargeTypes.getTypes();
            p.a(this.a, arrchargeType);
            return;
        }
        e.a(p.a(this.a), "\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
    }
}
