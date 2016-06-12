package com.clilystudio.netbook.hpay100;

final class k implements y {

    private HPaySdkActivity a;

    k(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void a(z z1) {
        HPaySdkActivity.b(a);
        if (HPaySdkActivity.a != null)
            HPaySdkActivity.a.a(z1);
        a.finish();
    }
}
