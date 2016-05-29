package com.clilystudio.app.netbook.ui;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.db.BookFile;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.cm
 * JD-Core Version:    0.6.2
 */