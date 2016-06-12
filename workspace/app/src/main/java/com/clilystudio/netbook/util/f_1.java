package com.clilystudio.netbook.util;

final class f extends Thread {

    private e a;

    f(e e1) {
        a = e1;
    }

    public final void run() {
        try {
            e.a(a);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
