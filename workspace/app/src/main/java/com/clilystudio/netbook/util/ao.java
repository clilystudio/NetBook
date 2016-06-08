package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.b;

final class ao extends Thread {
    ao(String paramString1, String paramString2, String paramString3) {
    }

    public final void run() {
        try {
            b.a();
            b.b().l(this.a, this.b, this.c);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }
}

