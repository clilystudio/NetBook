package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.db.BookFile;

import java.io.File;

final class cm
        implements r {
    cm(WifiActivity paramWifiActivity, BookFile paramBookFile) {
    }

    public final void a(com.koushikdutta.async.http.server.h paramh, l paraml) {
        File localFile = a.I(this.a.getName());
        if (localFile != null) {
            paraml.c().a().a("Content-Disposition", "attachment");
            paraml.a(localFile);
            return;
        }
        paraml.a("error");
    }
}

