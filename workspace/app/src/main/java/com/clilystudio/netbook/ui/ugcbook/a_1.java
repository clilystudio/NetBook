package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask;

final class a implements j {
    private /* synthetic */ AbsUGCListFragment a;

    a(AbsUGCListFragment absUGCListFragment) {
        this.a = absUGCListFragment;
    }

    @Override
    public final void a() {
        if (this.a.h == null || this.a.h.getStatus() == AsyncTask.Status.FINISHED) {
            this.a.e.setVisibility(0);
            if (this.a.g != null && this.a.g.getStatus() != AsyncTask.Status.FINISHED && !this.a.g.isCancelled()) {
                this.a.g.cancel(true);
            }
            this.a.h = new d(this.a, 0);
            this.a.h.b(new String[0]);
        }
    }
}
