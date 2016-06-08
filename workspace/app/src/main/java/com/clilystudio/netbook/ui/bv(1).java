package com.clilystudio.netbook.ui;

final class bv
        implements j {
    bv(NotifFragment paramNotifFragment) {
    }

    public final void a() {
        if ((NotifFragment.n(this.a) == null) || (NotifFragment.n(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            NotifFragment.i(this.a).setVisibility(0);
            if ((NotifFragment.o(this.a) != null) && (NotifFragment.o(this.a).getStatus() != AsyncTask.Status.FINISHED) && (!NotifFragment.o(this.a).isCancelled()))
                NotifFragment.o(this.a).cancel(true);
            NotifFragment.a(this.a, new bw(this.a, 0));
            bw localbw = NotifFragment.n(this.a);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = NotifFragment.c(this.a).getToken();
            localbw.b(arrayOfString);
        }
    }
}

