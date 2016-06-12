package com.clilystudio.netbook.util;

final class ao extends Thread {

    private String a;
    private String b;
    private String c;
    ao(String String1, String String2, String String3) {
        a = String1;
        b = String2;
        c = String3;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.api.b.a();
            com.clilystudio.netbook.api.b.b().l(a, b, c);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }
}
