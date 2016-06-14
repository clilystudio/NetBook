package com.clilystudio.netbook.ui;

import java.io.IOException;

final class ca implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ SettingsActivity b;

    ca(SettingsActivity settingsActivity, String string) {
        this.b = settingsActivity;
        this.a = string;
    }

    @Override
    public final void run() {
        try {
            b.b().P(this.a);
            return;
        } catch (IOException var1_1) {
            var1_1.printStackTrace();
            return;
        }
    }
}
