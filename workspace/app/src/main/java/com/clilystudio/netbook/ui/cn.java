package com.clilystudio.netbook.ui;

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

