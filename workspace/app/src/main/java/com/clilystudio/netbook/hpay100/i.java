package com.clilystudio.netbook.hpay100;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class i implements DialogInterface$OnClickListener {

    private HPaySdkActivity a;

    i(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        if (HPaySdkActivity.o(a) != null) {
            z z3 = new z();

            z3.a(3);
            z3.c(HPaySdkActivity.o(a).mOrderidAPP);
            z3.c = HPaySdkActivity.o(a).mPayName;
            z3.d(HPaySdkActivity.o(a).mAmount);
            z3.e(HPaySdkActivity.o(a).mRealAmount);
            z3.d = HPaySdkActivity.o(a).mPayId;
            z3.c(HPaySdkActivity.o(a).mScheme);
            z3.e = HPaySdkActivity.o(a).mCodeType;
            if (HPaySdkActivity.a != null)
                HPaySdkActivity.a.a(z3);
            a.finish();
            com.clilystudio.netbook.hpay100.config.a.a(a.getApplicationContext(), HPaySdkActivity.o(a).mOrderidAPP, HPaySdkActivity.o(a).mOrderidHR, HPaySdkActivity.o(a).mChType, HPaySdkActivity.o(a).mChID, HPaySdkActivity.o(a).mScheme, HPaySdkActivity.o(a).mPayId, HPaySdkActivity.o(a).mAmount, "1", "", 5);
        }
    }
}
