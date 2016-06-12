package com.clilystudio.netbook.util;

import java.io.IOException;

final class z implements Runnable {

    private String a;
    private y b;
    z(y y1, String String2) {
        b = y1;
        a = String2;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().B(b.a.get_id(), a);
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return;
        }
    }
}
