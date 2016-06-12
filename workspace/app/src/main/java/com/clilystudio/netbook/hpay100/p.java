package com.clilystudio.netbook.hpay100;

import android.view.View;
import android.view.View$OnClickListener;

final class p implements View$OnClickListener {

    private HPaySdkActivity a;

    p(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void onClick(View View1) {
        if (HPaySdkActivity.m(a))
            HPaySdkActivity.b(a, 5);
        else {
            com.clilystudio.netbook.hpay100.config.b.a(null);
            HPaySdkActivity.a(a, true);
            HPaySdkActivity.t(a);
            HPaySdkActivity.p(a).setEnabled(true);
            HPaySdkActivity.u(a);
        }
    }
}
