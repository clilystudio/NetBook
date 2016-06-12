package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;

public final class bH {

    private SharedPreferences a;     // final access specifier removed
    private boolean b;
    private boolean c;
    private int d;
    private boolean e;
    private boolean f;
    public bH(Context Context1) {
        a = PreferenceManager.getDefaultSharedPreferences(Context1);
        g();
    }

    public static boolean a(Context Context1) {
        try {
            if ("xiaomi".equals(new StringBuilder().append(Build.BRAND).toString().toLowerCase()))
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
        }
        return true;
    }

    private void g() {
        b = a.getBoolean("volume_keys_flip", true);
        c = a.getBoolean("click_flip_animation", false);
        d = a.getInt("reader_screen_off_time", 120000);
        e = a.getBoolean("key_always_next_page", false);
        f = a.getBoolean("key_enable_imersive_mode", false);
        a.getBoolean("convert_t", false);
    }

    public final void a() {
        g();
    }

    public final boolean b() {
        return b;
    }

    public final boolean c() {
        return c;
    }

    public final int d() {
        return d;
    }

    public final boolean e() {
        return e;
    }

    public final boolean f() {
        return f;
    }
}
