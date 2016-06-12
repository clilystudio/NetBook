package com.clilystudio.netbook.hpay100;

import android.app.Activity;

import com.clilystudio.netbook.hpay100.c.c;

final class s implements Runnable {

    private HPaySdkActivity a;
    private String b;     // final access specifier removed
    s(HPaySdkActivity HPaySdkActivity1, String String2) {
        a = HPaySdkActivity1;
        b = String2;
    }

    public final void run() {
        try {
            HPaySdkActivity.b(a);
            HPaySdkActivity.a(a, c.a((Activity) a, b, false, null));
            if (HPaySdkActivity.w(a) != null)
                HPaySdkActivity.w(a).show();
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
