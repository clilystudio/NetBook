package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.b;

final class an extends Thread {
    an(String paramString1, String paramString2) {
    }

    public final void run() {
        try {
            b.a();
            b.b().w(this.a, this.b);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }
}

