package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.TxtFileObject;

import java.io.File;

final class cu implements b {
    private /* synthetic */ ct a;

    cu(ct ct2) {
        this.a = ct2;
    }

    @Override
    public final void a(y y2, v v2) {
        byte[] arrby = new byte[v2.c()];
        v2.a(arrby);
        String string = this.a.b.b[0];
        File file = new File(a.J(c.g), string);
        if (this.a.a[0] == null) {
            WifiActivity.a(this.a.b.c, file);
            this.a.a[0] = false;
        }
        WifiActivity.a(this.a.b.c, file, arrby);
        TxtFileObject.add(new BookFile(file));
        cs cs2 = this.a.b;
        cs2.a += v2.c();
        v2.j();
    }
}
