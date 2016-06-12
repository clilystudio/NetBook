package com.clilystudio.netbook.umeng.update.net;

import java.io.File;

final class x implements Runnable {

    private File a;     // final access specifier removed
    private long b;     // final access specifier removed
    x(File File1, long long2) {
        a = File1;
        b = long2;
    }

    public final void run() {
        w.a(a, b);
        w.a(null);
    }
}
