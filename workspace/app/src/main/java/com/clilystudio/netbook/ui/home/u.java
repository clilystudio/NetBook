package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.reader.txt.U;

import java.io.FileNotFoundException;

final class u extends Thread {
    private /* synthetic */ String a;

    u(HomeShelfFragment homeShelfFragment, String string) {
        this.a = string;
    }

    @Override
    public final void run() {
        try {
            String string = U.b(this.a);
            a.F(c.d + string);
            return;
        } catch (FileNotFoundException var1_2) {
            var1_2.printStackTrace();
            return;
        }
    }
}
