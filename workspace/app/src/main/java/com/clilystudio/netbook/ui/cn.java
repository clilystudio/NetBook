package com.clilystudio.netbook.ui;

import java.io.IOException;
import java.io.InputStream;

final class cn implements r {
    private /* synthetic */ String a;
    private /* synthetic */ String b;
    private /* synthetic */ WifiActivity c;

    cn(WifiActivity wifiActivity, String string, String string2) {
        this.c = wifiActivity;
        this.a = string;
        this.b = string2;
    }

    @Override
    public final void a(h h2, l l2) {
        try {
            InputStream inputStream = this.c.getAssets().open(this.a);
            if (this.b != null) {
                l2.b(this.b);
            }
            l2.a(inputStream, inputStream.available());
            return;
        } catch (IOException var3_4) {
            l2.a("error!!");
            var3_4.printStackTrace();
            return;
        }
    }
}
