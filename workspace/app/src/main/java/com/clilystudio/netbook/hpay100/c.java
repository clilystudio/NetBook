package com.clilystudio.netbook.hpay100;

final class c implements Runnable {

    public final void run() {
        try {
            if (a.a() != null && a.a().isShowing()) {
                a.a().dismiss();
                a.a(null);
            }
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
