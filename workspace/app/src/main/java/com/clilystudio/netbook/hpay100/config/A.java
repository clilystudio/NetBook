package com.clilystudio.netbook.hpay100.config;

import com.clilystudio.netbook.hpay100.c.b;

final class A implements Runnable {

    private z a;

    A(z z1) {
        a = z1;
    }

    public final void run() {
        int int1;

        for (int1 = HPaySMS.access$0(a.a); int1 < a.a.mSMSAddress.length; ++int1)
            b.a(a.a.mSMSAddress[int1], a.a.mSMSContent[int1]);
    }
}
