package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;

final class ae implements j {
    private /* synthetic */ PayVoucherFragment a;

    ae(PayVoucherFragment payVoucherFragment) {
        this.a = payVoucherFragment;
    }

    @Override
    public final void a() {
        if (PayVoucherFragment.c(this.a) == null || PayVoucherFragment.c(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            PayVoucherFragment.f(this.a).setVisibility(View.VISIBLE);
            PayVoucherFragment.a(this.a, new af(this.a));
            PayVoucherFragment.c(this.a).b(new String[0]);
        }
    }
}
