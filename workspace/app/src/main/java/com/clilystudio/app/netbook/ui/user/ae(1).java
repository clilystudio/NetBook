package com.clilystudio.app.netbook.ui.user;

final class ae
        implements j {
    ae(PayVoucherFragment paramPayVoucherFragment) {
    }

    public final void a() {
        if ((PayVoucherFragment.c(this.a) == null) || (PayVoucherFragment.c(this.a).getStatus() == AsyncTask.Status.FINISHED)) {
            PayVoucherFragment.f(this.a).setVisibility(0);
            PayVoucherFragment.a(this.a, new af(this.a));
            PayVoucherFragment.c(this.a).b(new String[0]);
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ae
 * JD-Core Version:    0.6.2
 */