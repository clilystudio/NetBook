package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask$Status;

final class aq implements Runnable {

    private ap a;

    aq(ap ap1) {
        a = ap1;
    }

    public final void run() {
        if (UGCMainListFragment.b(a.a) != null && UGCMainListFragment.b(a.a).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.ugcbook.UGCMainListFragment.b(a.a).isCancelled())
            UGCMainListFragment.b(a.a).cancel(true);
        UGCMainListFragment.a(a.a, new at(a.a, (byte) 0));
        UGCMainListFragment.b(a.a).b(new String[0]);
    }
}
