package com.clilystudio.netbook.hpay100;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class j implements DialogInterface$OnClickListener {

    private HPaySdkActivity a;

    j(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (HPaySdkActivity.h(a) == null) {
            z z3 = new z();

            z3.a(3);
            z3.c(HPaySdkActivity.e(a));
            z3.c = HPaySdkActivity.i(a);
            z3.d(HPaySdkActivity.g(a));
            z3.e(HPaySdkActivity.g(a));
            z3.d = HPaySdkActivity.f(a);
            z3.c(HPaySdkActivity.a());
            z3.e = HPaySdkActivity.s(a);
            if (HPaySdkActivity.a != null)
                HPaySdkActivity.a.a(z3);
            a.finish();
            com.clilystudio.netbook.hpay100.config.a.a(a.getApplicationContext(), HPaySdkActivity.e(a), "", "", "", HPaySdkActivity.a(), HPaySdkActivity.f(a), HPaySdkActivity.g(a), "1", "", 5);
        } else {
            z z4 = new z();

            z4.a(3);
            z4.c(HPaySdkActivity.h(a).mOrderidAPP);
            z4.c = HPaySdkActivity.h(a).mPayName;
            z4.d(HPaySdkActivity.h(a).mAmount);
            z4.e(HPaySdkActivity.h(a).mRealAmount);
            z4.d = HPaySdkActivity.h(a).mPayId;
            z4.c(HPaySdkActivity.h(a).mScheme);
            if (HPaySdkActivity.a != null)
                HPaySdkActivity.a.a(z4);
            a.finish();
            com.clilystudio.netbook.hpay100.config.a.a(a.getApplicationContext(), HPaySdkActivity.h(a).mOrderidAPP, HPaySdkActivity.h(a).mOrderidHR, HPaySdkActivity.h(a).mChType, HPaySdkActivity.h(a).mChID, HPaySdkActivity.h(a).mScheme, HPaySdkActivity.h(a).mPayId, HPaySdkActivity.h(a).mAmount, "1", "", 5);
        }
    }
}
