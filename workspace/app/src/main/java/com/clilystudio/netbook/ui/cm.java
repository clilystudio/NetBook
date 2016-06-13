package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.db.BookFile;

import java.io.File;

final class cm
        implements r {
    private /* synthetic */ BookFile a;

    cm(WifiActivity wifiActivity, BookFile bookFile) {
        this.a = bookFile;
    }

    @Override
    public final void a(h h2, l l2) {
        File file = a.I(this.a.getName());
        if (file != null) {
            l2.c().a().a("Content-Disposition", "attachment");
            l2.a(file);
            return;
        }
        l2.a("error");
    }
}
