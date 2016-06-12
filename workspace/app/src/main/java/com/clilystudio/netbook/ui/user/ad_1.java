package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask$Status;

final class ad implements Runnable {

    private ac a;

    ad(ac ac1) {
        a = ac1;
    }

    public final void run() {
        if (PayVoucherFragment.c(a.a) != null && PayVoucherFragment.c(a.a).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.user.PayVoucherFragment.c(a.a).isCancelled())
            PayVoucherFragment.c(a.a).cancel(true);
        PayVoucherFragment.a(a.a, new af(a.a, false));
        PayVoucherFragment.c(a.a).b(new String[0]);
    }
}
