package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.api.b;

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

