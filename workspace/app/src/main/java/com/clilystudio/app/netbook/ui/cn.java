package com.clilystudio.app.netbook.ui;

import java.io.IOException;
import java.io.InputStream;

final class cn
        implements r {
    cn(WifiActivity paramWifiActivity, String paramString1, String paramString2) {
    }

    public final void a(h paramh, l paraml) {
        try {
            InputStream localInputStream = this.c.getAssets().open(this.a);
            if (this.b != null)
                paraml.b(this.b);
            paraml.a(localInputStream, localInputStream.available());
            return;
        } catch (IOException localIOException) {
            paraml.a("error!!");
            localIOException.printStackTrace();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.cn
 * JD-Core Version:    0.6.2
 */