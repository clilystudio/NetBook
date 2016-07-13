package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.WindowManager;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ThemeChangedEvent;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class ReaderStyle {
    private static final List<String> k = Arrays.asList("s", "m", "l", "xl", "xxl", "3xl");
    private final Activity m;
    private final Resources n;
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    private int l;
    private List<ce> o = new ArrayList<>();
    private List<cc> p = new ArrayList<>();
    private List<ca> q = new ArrayList<>();
    private List<cd> r = new ArrayList<>();
    private List<cb> s = new ArrayList<>();
    private SharedPreferences t;
    private int u;
    private boolean v;
    private int w;
    private boolean x;
    private boolean y;
    private int z;

    public ReaderStyle(Activity activity) {
        this.m = activity;
        this.n = activity.getResources();
        this.t = PreferenceManager.getDefaultSharedPreferences(this.m);
        this.u = k.indexOf(this.t.getString("text_spec", k.get(1)));
        this.v = this.t.getBoolean("is_use_system_brightness", true);
        this.w = this.t.getInt("brightness", 50);
        this.x = this.t.getBoolean("night_mode", false);
        this.y = this.t.getBoolean("convert_t", false);
        this.z = this.t.getInt("reader_background_mode", 1);
        int n = am.b(this.m).widthPixels;
        this.c = this.n.getDimensionPixelSize(R.dimen.page_horizontal_padding);
        this.d = this.n.getDimensionPixelSize(R.dimen.page_vertical_padding);
        this.f = n - (this.c << 1);
        this.l = this.n.getDimensionPixelSize(R.dimen.page_small_text_height);
        this.a(com.clilystudio.netbook.hpay100.a.a.l(this.m, "reader_opt_full_screen"));
        this.k();
        this.c(this.z);
    }

    public static boolean a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("night_mode", false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c(int n) {
        if (this.x) {
            this.g = this.n.getColor(R.color.reading_night_text_color);
            this.h = R.color.reading_night_background_color;
            this.j = R.drawable.reader_battery_bg_night;
        } else {
            switch (n) {
                case 1:
                    this.g = this.n.getColor(R.color.reader_mode_white_text_color);
                    this.h = R.color.reader_background_white_color;
                    this.j = R.drawable.reader_battery_bg_normal;
                    break;
                case 2:
                    this.g = this.n.getColor(R.color.reader_mode_brown_text_color);
                    this.h = R.drawable.reader_background_brown_big_img;
                    this.j = R.drawable.reader_battery_bg_brown;
                    break;
                case 3:
                    this.g = this.n.getColor(R.color.reader_mode_green_text_color);
                    this.h = R.color.reader_background_white_green;
                    this.j = R.drawable.reader_battery_bg_green;
                    break;
            }
        }
        this.i = Color.argb(153, Color.red(this.g), Color.green(this.g), Color.blue(this.g));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void k() {
        float var1_1 = 1.0f;
        float var2_2 = this.n.getDimensionPixelSize(R.dimen.page_text_size);
        switch (this.u) {
            case 0:
                var1_1 = 0.9f;
                break;
            case 2:
                var1_1 = 1.15f;
                break;
            case 3:
                var1_1 = 1.3f;
                break;
            case 4:
                var1_1 = 1.6f;
                break;
            case 5:
                var1_1 = 1.9f;
                break;
        }
        this.a = Math.round(var1_1 * var2_2);
        this.b = Math.round(0.4f * (float) this.a);
    }

    private void l() {
        for (cc aP : this.p) {
            aP.a();
        }
    }

    private void m() {
        for (ca aQ : this.q) {
            aQ.a();
        }
    }

    private void n() {
        SharedPreferences.Editor editor = this.t.edit();
        editor.putString("text_spec", k.get(this.u));
        editor.apply();
    }

    private void o() {
        SharedPreferences.Editor editor = this.t.edit();
        editor.putInt("brightness", this.w);
        editor.putBoolean("is_use_system_brightness", this.v);
        editor.apply();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void p() {
        com.clilystudio.netbook.hpay100.a.a.b(this.m, "customer_night_theme", this.x);
        com.clilystudio.netbook.hpay100.a.a.b(this.m, "night_mode", this.x);
        if (this.x) {
            com.clilystudio.netbook.hpay100.a.a.B(this.m);
        } else {
            com.clilystudio.netbook.hpay100.a.a.C(this.m);
        }
        Intent intent = new Intent();
        intent.setAction("broadcastOnThemeChanged");
        this.m.sendBroadcast(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        this.x = !this.x;
        this.c(this.j());
        Iterator<ce> iterator = this.o.iterator();
        do {
            if (!iterator.hasNext()) {
                this.p();
                BusProvider.getInstance().post(new ThemeChangedEvent(this.x));
                return;
            }
            iterator.next().a();
        } while (true);
    }

    public final void a(int n) {
        boolean bl = this.x;
        this.x = false;
        this.c(n);
        for (cd aR : this.r) {
            aR.a();
        }
        if (bl) {
            this.p();
        }
        SharedPreferences.Editor editor = this.t.edit();
        editor.putInt("reader_background_mode", n);
        editor.apply();
    }

    public final void a(ca ca2) {
        this.q.add(ca2);
    }

    public final void a(cb cb2) {
        this.s.add(cb2);
    }

    public final void a(cc cc2) {
        this.p.add(cc2);
    }

    public final void a(cd cd2) {
        this.r.add(cd2);
    }

    public final void a(ce ce2) {
        this.o.add(ce2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        int n;
        if (this.t.getBoolean("key_enable_imersive_mode", false)) {
            Display display = ((WindowManager) this.m.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
            Point point = new Point();
            display.getRealSize(point);
            n = point.y;
        } else {
            n = com.clilystudio.netbook.hpay100.a.a.L(this.m);
        }
        int n2 = this.n.getDimensionPixelSize(R.dimen.page_body_margin);
        int n3 = n - (this.d << 1) - (this.l << 1) - (n2 << 1);
        if (bl) {
            this.e = n3;
            return;
        }
        this.e = n3 - am.k(this.m);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void b() {
        this.y = !this.y;
        Iterator<cb> iterator = this.s.iterator();
        do {
            if (!iterator.hasNext()) {
                SharedPreferences.Editor editor = this.t.edit();
                editor.putBoolean("convert_t", this.y);
                editor.apply();
                return;
            }
            iterator.next().a();
        } while (true);
    }

    public final void b(int n) {
        this.w = n;
        this.m();
        this.o();
    }

    public final void b(boolean bl) {
        this.v = bl;
        this.m();
        this.o();
    }

    public final int c() {
        return this.u;
    }

    public final void d() {
        if (this.u < -1 + k.size()) {
            this.u = 1 + this.u;
            this.k();
            this.l();
            this.n();
        }
    }

    public final void e() {
        if (this.u > 0) {
            this.u = -1 + this.u;
            this.k();
            this.l();
            this.n();
        }
    }

    public final int f() {
        return this.w;
    }

    public final boolean g() {
        return this.v;
    }

    public final boolean h() {
        return this.x;
    }

    public final boolean i() {
        return this.y;
    }

    public final int j() {
        int n;
        this.z = n = this.t.getInt("reader_background_mode", 1);
        return n;
    }

    public interface ca {
        void a();
    }

    public interface cb {
        void a();
    }

    public interface cc {
        void a();
    }

    public interface cd {
        void a();
    }

    public interface ce {
        void a();
    }
}
