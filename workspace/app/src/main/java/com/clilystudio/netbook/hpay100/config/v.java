package com.clilystudio.netbook.hpay100.config;

import android.content.Context;

final class v implements Runnable {

    private Context a;     // final access specifier removed
    private k b;     // final access specifier removed
    v(Context Context1, k k2) {
        a = Context1;
        b = k2;
    }

    public final void run() {
        label_28:
        {
            String String3;

            try {
                String String4 = com.clilystudio.netbook.hpay100.a.a.a(a.getApplicationContext(), "http://m.139site.com/msisdn.jsp", null, false, 30000, 40000, true);

                com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("phoneNumberCM02:").append(String4).toString());
                String3 = com.clilystudio.netbook.hpay100.c.b.b(String4);
                if (com.clilystudio.netbook.hpay100.c.b.a(String3)) {
                    l.j = String3;
                    break label_28;
                }
            } catch (Exception Exception1) {
                Exception Exception2 = Exception1;

                String3 = "";
                Exception2.printStackTrace();
            }
            if (b != null)
                b.a(String3);
            return;
        }
        try {
            com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("HPayConfig.mPhone white:").append(l.j).toString());
        } catch (Exception Exception5) {
            Exception5.printStackTrace();
        }
    }
}
