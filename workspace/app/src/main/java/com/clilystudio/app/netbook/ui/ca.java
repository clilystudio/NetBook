package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.api.b;

import java.io.IOException;

final class ca
        implements Runnable {
    ca(SettingsActivity paramSettingsActivity, String paramString) {
    }

    public final void run() {
        try {
            b.b().P(this.a);
            return;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ca
 * JD-Core Version:    0.6.2
 */