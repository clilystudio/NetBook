package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask;

final class c
        implements Runnable {
    private /* synthetic */ b a;

    c(b b2) {
        this.a = b2;
    }

    @Override
    public final void run() {
        if (this.a.a.g != null && this.a.a.g.getStatus() != AsyncTask.Status.FINISHED && !this.a.a.g.isCancelled()) {
            this.a.a.g.cancel(true);
        }
        this.a.a.g = new e(this.a.a, 0);
        this.a.a.g.b(new String[0]);
    }
}
