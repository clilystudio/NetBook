package com.clilystudio.netbook.util;

final class f extends Thread {
    private /* synthetic */ e a;

    f(e e2) {
        this.a = e2;
    }

    @Override
    public final void run() {
        try {
            e.a(this.a);
            return;
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }
}
