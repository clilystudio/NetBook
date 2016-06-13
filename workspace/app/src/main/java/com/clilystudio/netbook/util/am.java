package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.Account;

final class am
        extends Thread {
    private /* synthetic */ Account a;
    private /* synthetic */ String b;

    am(Account account, String string) {
        this.a = account;
        this.b = string;
    }

    @Override
    public final void run() {
        try {
            b.a();
            b.b().x(this.a.getToken(), this.b);
            return;
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }
}
