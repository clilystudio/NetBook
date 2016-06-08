package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import android.view.ViewConfiguration;

public final class bH {
    private final SharedPreferences a;
    private boolean b;
    private boolean c;
    private int d;
    private boolean e;
    private boolean f;

    public bH(Context paramContext) {
        this.a = PreferenceManager.getDefaultSharedPreferences(paramContext);
        g();
    }

    public static boolean a(Context paramContext) {
        try {
            if ("xiaomi".equals(Build.BRAND.toLowerCase()))
                return true;
            if (a.i()) {
                boolean bool = ViewConfiguration.get(paramContext).hasPermanentMenuKey();
                if (!bool)
                    return false;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return true;
    }

    private void g() {
        this.b = this.a.getBoolean("volume_keys_flip", true);
        this.c = this.a.getBoolean("click_flip_animation", false);
        this.d = this.a.getInt("reader_screen_off_time", 120000);
        this.e = this.a.getBoolean("key_always_next_page", false);
        this.f = this.a.getBoolean("key_enable_imersive_mode", false);
        this.a.getBoolean("convert_t", false);
    }

    public final void a() {
        g();
    }

    public final boolean b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean f() {
        return this.f;
    }
}

