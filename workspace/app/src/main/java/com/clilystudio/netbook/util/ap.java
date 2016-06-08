package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.b;

final class ap extends Thread {
    ap(String paramString1, String paramString2) {
    }

    public final void run() {
        try {
            b.a();
            b.b().e(am.e().getToken(), this.a, this.b);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }
}

