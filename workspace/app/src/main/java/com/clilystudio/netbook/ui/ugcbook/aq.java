package com.clilystudio.netbook.ui.ugcbook;

final class aq
        implements Runnable {
    aq(ap paramap) {
    }

    public final void run() {
        if ((UGCMainListFragment.b(this.a.a) != null) && (UGCMainListFragment.b(this.a.a).getStatus() != AsyncTask.Status.FINISHED) && (!UGCMainListFragment.b(this.a.a).isCancelled()))
            UGCMainListFragment.b(this.a.a).cancel(true);
        UGCMainListFragment.a(this.a.a, new at(this.a.a, 0));
        UGCMainListFragment.b(this.a.a).b(new String[0]);
    }
}
