package com.clilystudio.netbook.ui;

import java.io.IOException;

final class ca implements Runnable {

    private String a;
    private SettingsActivity b;
    ca(SettingsActivity SettingsActivity1, String String2) {
        b = SettingsActivity1;
        a = String2;
    }

    public final void run() {
        try {
            com.clilystudio.netbook.api.b.b().P(a);
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
            return;
        }
    }
}
