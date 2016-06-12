package com.clilystudio.netbook.util;

import com.clilystudio.netbook.model.Account;

final class am extends Thread {

    private Account a;
    private String b;
    am(Account Account1, String String2) {
        a = Account1;
        b = String2;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().x(a.getToken(), b);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
