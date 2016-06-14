package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;

final class ad implements Runnable {
    private /* synthetic */ ac a;

    ad(ac ac2) {
        this.a = ac2;
    }

    @Override
    public final void run() {
        if (PayVoucherFragment.c(this.a.a) != null && PayVoucherFragment.c(this.a.a).getStatus() != AsyncTask.Status.FINISHED && !PayVoucherFragment.c(this.a.a).isCancelled()) {
            PayVoucherFragment.c(this.a.a).cancel(true);
        }
        PayVoucherFragment.a(this.a.a, new af(this.a.a, false));
        PayVoucherFragment.c(this.a.a).b(new String[0]);
    }
}
