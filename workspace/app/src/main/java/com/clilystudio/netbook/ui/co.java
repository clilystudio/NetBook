package com.clilystudio.netbook.ui;

import java.io.IOException;
import java.io.InputStream;

final class co
        implements r {
    co(WifiActivity paramWifiActivity) {
    }

    public final void a(h paramh, l paraml) {
        try {
            InputStream localInputStream = this.a.getAssets().open("index.html");
            paraml.a(localInputStream, localInputStream.available());
            return;
        } catch (IOException localIOException) {
            paraml.a("error!!");
            localIOException.printStackTrace();
        }
    }
}

