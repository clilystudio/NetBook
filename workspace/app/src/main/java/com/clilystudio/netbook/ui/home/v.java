package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.c;

import java.io.File;

final class v
        extends Thread {
    private /* synthetic */ String a;

    v(HomeShelfFragment homeShelfFragment, String string) {
        this.a = string;
    }

    @Override
    public final void run() {
        String string = this.a;
        a.E(c.b + File.separator + string);
    }
}
