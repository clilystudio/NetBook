package com.clilystudio.netbook.ui.user;

final class h implements Runnable {

    private ChargeActivity a;

    h(ChargeActivity ChargeActivity1) {
        a = ChargeActivity1;
    }

    public final void run() {
        ChargeActivity.a(a);
    }
}
