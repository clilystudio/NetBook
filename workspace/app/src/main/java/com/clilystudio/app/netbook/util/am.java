package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.am
 * JD-Core Version:    0.6.2
 */