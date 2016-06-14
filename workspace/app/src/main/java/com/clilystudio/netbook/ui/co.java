package com.clilystudio.netbook.ui;

import java.io.IOException;
import java.io.InputStream;

final class co implements r {
    private /* synthetic */ WifiActivity a;

    co(WifiActivity wifiActivity) {
        this.a = wifiActivity;
    }

    @Override
    public final void a(h h2, l l2) {
        try {
            InputStream inputStream = this.a.getAssets().open("index.html");
            l2.a(inputStream, inputStream.available());
            return;
        } catch (IOException var3_4) {
            l2.a("error!!");
            var3_4.printStackTrace();
            return;
        }
    }
}
