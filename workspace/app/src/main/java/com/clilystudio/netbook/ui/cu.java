package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.TxtFileObject;

import java.io.File;

final class cu implements com.koushikdutta.async.a.b {

    private ct a;

    cu(ct ct1) {
        a = ct1;
    }

    public final void a(y y1, v v2) {
        byte[] byte_1darray3 = new byte[v2.c()];
        String String4;
        File File5;
        cs cs7;

        v2.a(byte_1darray3);
        String4 = a.b.b[0];
        File5 = new File(com.clilystudio.netbook.hpay100.a.a.J(com.clilystudio.netbook.c.g), String4);
        if (a.a[0] == null) {
            WifiActivity.a(a.b.c, File5);
            a.a[0] = Boolean.valueOf(false);
        }
        WifiActivity.a(a.b.c, File5, byte_1darray3);
        TxtFileObject.add(new BookFile(File5));
        cs7 = a.b;
        cs7.a += v2.c();
        v2.j();
    }
}
