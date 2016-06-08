package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;

final class am extends Thread {
    am(Account paramAccount, String paramString) {
    }

    public final void run() {
        try {
            b.a();
            b.b().x(this.a.getToken(), this.b);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }
}

