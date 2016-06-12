package com.clilystudio.netbook.hpay100;

final class h implements Runnable {

    private HPaySdkActivity a;

    h(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void run() {
        try {
            if (HPaySdkActivity.w(a) != null && HPaySdkActivity.w(a).isShowing()) {
                HPaySdkActivity.w(a).dismiss();
                HPaySdkActivity.a(a, null);
            }
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
