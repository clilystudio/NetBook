package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.b;

import java.io.IOException;

final class z
        implements Runnable {
    z(y paramy, String paramString) {
    }

    public final void run() {
        try {
            b.a();
            b.b().B(this.b.a.get_id(), this.a);
            return;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
    }
}

