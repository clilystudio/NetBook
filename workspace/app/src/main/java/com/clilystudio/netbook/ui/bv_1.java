package com.clilystudio.netbook.ui;

import android.os.AsyncTask;

final class bv
        implements j {
    private /* synthetic */ NotifFragment a;

    bv(NotifFragment notifFragment) {
        this.a = notifFragment;
    }

    @Override
    public final void a() {
        if (NotifFragment.n(this.a) == null || NotifFragment.n(this.a).getStatus() == AsyncTask.Status.FINISHED) {
            NotifFragment.i(this.a).setVisibility(0);
            if (NotifFragment.o(this.a) != null && NotifFragment.o(this.a).getStatus() != AsyncTask.Status.FINISHED && !NotifFragment.o(this.a).isCancelled()) {
                NotifFragment.o(this.a).cancel(true);
            }
            NotifFragment.a(this.a, new bw(this.a, 0));
            bw bw2 = NotifFragment.n(this.a);
            String[] arrstring = new String[]{NotifFragment.c(this.a).getToken()};
            bw2.b(arrstring);
        }
    }
}
