package com.clilystudio.netbook.ui.ugcbook;

final class ar
        implements j {
    ar(UGCMainListFragment paramUGCMainListFragment) {
    }

    public final void a() {
        if ((UGCMainListFragment.i(this.a) == null) || (UGCMainListFragment.i(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            UGCMainListFragment.d(this.a).setVisibility(0);
            if ((UGCMainListFragment.b(this.a) != null) && (UGCMainListFragment.b(this.a).getStatus() != AsyncTask.Status.FINISHED) && (!UGCMainListFragment.b(this.a).isCancelled()))
                UGCMainListFragment.b(this.a).cancel(true);
            UGCMainListFragment.a(this.a, new as(this.a, 0));
            UGCMainListFragment.i(this.a).b(new String[0]);
        }
    }
}
