package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask$Status;

final class ar implements j {

    private UGCMainListFragment a;

    ar(UGCMainListFragment UGCMainListFragment1) {
        a = UGCMainListFragment1;
    }

    public final void a() {
        if (UGCMainListFragment.i(a) == null || UGCMainListFragment.i(a).getStatus() == AsyncTask$Status.FINISHED) {
            UGCMainListFragment.d(a).setVisibility(0);
            if (UGCMainListFragment.b(a) != null && UGCMainListFragment.b(a).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.ugcbook.UGCMainListFragment.b(a).isCancelled())
                UGCMainListFragment.b(a).cancel(true);
            UGCMainListFragment.a(a, new as(a, (byte) 0));
            UGCMainListFragment.i(a).b(new String[0]);
        }
    }
}
