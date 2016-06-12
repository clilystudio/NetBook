package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask$Status;

final class a implements j {

    private AbsUGCListFragment a;

    a(AbsUGCListFragment AbsUGCListFragment1) {
        a = AbsUGCListFragment1;
    }

    public final void a() {
        if (a.h == null || a.h.getStatus() == AsyncTask$Status.FINISHED) {
            a.e.setVisibility(0);
            if (a.g != null && a.g.getStatus() != AsyncTask$Status.FINISHED && !a.g.isCancelled())
                a.g.cancel(true);
            a.h = new d(a, (byte) 0);
            a.h.b(new String[0]);
        }
    }
}
