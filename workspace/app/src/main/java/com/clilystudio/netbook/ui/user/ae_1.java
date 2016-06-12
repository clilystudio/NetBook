package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask$Status;

final class ae implements j {

    private PayVoucherFragment a;

    ae(PayVoucherFragment PayVoucherFragment1) {
        a = PayVoucherFragment1;
    }

    public final void a() {
        if (PayVoucherFragment.c(a) == null || PayVoucherFragment.c(a).getStatus() == AsyncTask$Status.FINISHED) {
            PayVoucherFragment.f(a).setVisibility(0);
            PayVoucherFragment.a(a, new af(a));
            PayVoucherFragment.c(a).b(new String[0]);
        }
    }
}
