package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.preference.PreferenceManager;
import android.support.design.widget.am;
import android.view.Display;
import android.view.WindowManager;

import com.clilystudio.netbook.event.C;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class bZ {
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
    private List<ce> o = new ArrayList<ce>();
    private List<cc> p = new ArrayList<cc>();
    private List<ca> q = new ArrayList<ca>();
    private List<cd> r = new ArrayList<cd>();
    private List<cb> s = new ArrayList<cb>();
    private SharedPreferences t;
    private int u;
    private boolean v;
    private int w;
    private boolean x;
    private boolean y;
    private int z;

    public bZ(Activity activity) {
        this.m = activity;
        this.n = activity.getResources();
        this.t = PreferenceManager.getDefaultSharedPreferences(this.m);
        this.u = k.indexOf(this.t.getString("text_spec", k.get(1)));
        this.v = this.t.getBoolean("is_use_system_brightness", true);
        this.w = this.t.getInt("brightness", 50);
        this.x = this.t.getBoolean("night_mode", false);
        this.y = this.t.getBoolean("convert_t", false);
        this.z = this.t.getInt("reader_background_mode", 1);
        int n = am.b((Activity) this.m).widthPixels;
        this.c = this.n.getDimensionPixelSize(2131099677);
        this.d = this.n.getDimensionPixelSize(2131099680);
        this.f = n - (this.c << 1);
        this.l = this.n.getDimensionPixelSize(2131099678);
        this.a(a.l(this.m, "reader_opt_full_screen"));
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
            this.g = this.n.getColor(2131427506);
            this.h = 2131427505;
            this.j = 2130838080;
        } else {
            switch (n) {
                default: {
                    break;
                }
                case 1: {
                    this.g = this.n.getColor(2131427500);
                    this.h = 2131427494;
                    this.j = 2130838081;
                    break;
                }
                case 2: {
                    this.g = this.n.getColor(2131427498);
                    this.h = 2130838077;
                    this.j = 2130838078;
                    break;
                }
                case 3: {
                    this.g = this.n.getColor(2131427499);
                    this.h = 2131427495;
                    this.j = 2130838079;
                }
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
        var1_1 = 1.0f;
        var2_2 = this.n.getDimensionPixelSize(2131099679);
        switch (this.u) {
            case 0: {
                var1_1 = 0.9f;
                **break;
            }
            case 2: {
                var1_1 = 1.15f;
                **break;
            }
            case 3: {
                var1_1 = 1.3f;
                **break;
            }
            case 4: {
                var1_1 = 1.6f;
            }
            lbl15:
            // 5 sources:
            default:
            {
                **GOTO lbl19
            }
            case 5:
        }
        var1_1 = 1.9f;
        lbl19:
        // 2 sources:
        this.a = Math.round(var1_1 * var2_2);
        this.b = Math.round(0.4f * (float) this.a);
    }

    private void l() {
        Iterator<cc> iterator = this.p.iterator();
        while (iterator.hasNext()) {
            iterator.next().a();
        }
    }

    private void m() {
        Iterator<ca> iterator = this.q.iterator();
        while (iterator.hasNext()) {
            iterator.next().a();
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
        a.b((Context) this.m, "customer_night_theme", this.x);
        a.b((Context) this.m, "night_mode", this.x);
        if (this.x) {
            b.a(this.m, "start_night_theme_page");
            a.B(this.m);
        } else {
            a.C(this.m);
        }
        Intent intent = new Intent();
        intent.setAction("broadcastOnThemeChanged");
        this.m.sendBroadcast(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        boolean bl = !this.x;
        this.x = bl;
        this.c(this.j());
        Iterator<ce> iterator = this.o.iterator();
        do {
            if (!iterator.hasNext()) {
                this.p();
                i.a().c(new C(this.x));
                return;
            }
            iterator.next().a();
        } while (true);
    }

    public final void a(int n) {
        boolean bl = this.x;
        this.x = false;
        this.c(n);
        Iterator<cd> iterator = this.r.iterator();
        while (iterator.hasNext()) {
            iterator.next().a();
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
            Display display = ((WindowManager) this.m.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            display.getRealSize(point);
            n = point.y;
        } else {
            n = a.L(this.m);
        }
        int n2 = this.n.getDimensionPixelSize(2131099676);
        int n3 = n - (this.d << 1) - (this.l << 1) - (n2 << 1);
        if (bl) {
            this.e = n3;
            return;
        }
        this.e = n3 - am.k((Context) this.m);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void b() {
        boolean bl = !this.y;
        this.y = bl;
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
}
