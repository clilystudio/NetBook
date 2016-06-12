package com.clilystudio.netbook.util;

import android.app.Activity;

import com.clilystudio.netbook.model.ChargeType;
import com.clilystudio.netbook.model.ChargeTypes;

import java.io.IOException;

final class r extends com.clilystudio.netbook.a.c {

    private p a;

    public r(p p1, Activity Activity2) {
        super(Activity2);
        a = p1;
    }

    private static transient ChargeTypes a() {
        ChargeTypes ChargeTypes3;

        try {
            com.clilystudio.netbook.api.b.a();
            ChargeTypes3 = com.clilystudio.netbook.api.b.b().c();
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return null;
        }
        return ChargeTypes3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a();
    }

    public final void a(Object Object1) {
        ChargeTypes ChargeTypes2 = (ChargeTypes) Object1;

        if (ChargeTypes2 != null && ChargeTypes2.isOk() && ChargeTypes2.getTypes() != null) {
            ChargeType[] ChargeType_1darray3 = ChargeTypes2.getTypes();

            p.a(a, ChargeType_1darray3);
        } else
            e.a(p.a(a), "\u83B7\u53D6\u652F\u4ED8\u4FE1\u606F\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
    }
}
