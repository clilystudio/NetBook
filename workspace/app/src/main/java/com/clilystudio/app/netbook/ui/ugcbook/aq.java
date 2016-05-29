package com.clilystudio.app.netbook.ui.ugcbook;

final class aq
        implements Runnable {
    aq(ap paramap) {
    }

    public final void run() {
        if ((UGCMainListFragment.b(this.a.a) != null) && (UGCMainListFragment.b(this.a.a).getStatus() != AsyncTask.Status.FINISHED) && (!UGCMainListFragment.b(this.a.a).isCancelled()))
            UGCMainListFragment.b(this.a.a).cancel(true);
        UGCMainListFragment.a(this.a.a, new at(this.a.a, (byte) 0));
        UGCMainListFragment.b(this.a.a).b(new String[0]);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.aq
 * JD-Core Version:    0.6.2
 */