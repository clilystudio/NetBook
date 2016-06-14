package com.clilystudio.netbook.util;

final class ao extends Thread {
    private /* synthetic */ String a;
    private /* synthetic */ String b;
    private /* synthetic */ String c;

    ao(String string, String string2, String string3) {
        this.a = string;
        this.b = string2;
        this.c = string3;
    }

    @Override
    public final void run() {
        try {
            b.a();
            b.b().l(this.a, this.b, this.c);
            return;
        } catch (Exception var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }
}
