package com.clilystudio.netbook.ui.user;

final class h
        implements Runnable {
    private /* synthetic */ ChargeActivity a;

    h(ChargeActivity chargeActivity) {
        this.a = chargeActivity;
    }

    @Override
    public final void run() {
        ChargeActivity.a(this.a);
    }
}
