package com.clilystudio.netbook.util;

import java.io.IOException;

final class z
        implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ y b;

    z(y y2, String string) {
        this.b = y2;
        this.a = string;
    }

    @Override
    public final void run() {
        try {
            b.a();
            b.b().B(this.b.a.get_id(), this.a);
            return;
        } catch (IOException var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }
}
