package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences$Editor;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.preference.PreferenceManager;
import android.support.design.widget.am;
import android.view.Display;
import android.view.WindowManager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class bZ {

    private static final List k = Arrays.asList(new String[]{"s", "m", "l", "xl", "xxl", "3xl"});
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
    private Activity m;     // final access specifier removed
    private Resources n;     // final access specifier removed
    private SharedPreferences t;
    private int u;
    private boolean v;
    private int w;
    private boolean x;
    private boolean y;
    private int z;
    private List o = new ArrayList();
    private List p = new ArrayList();
    private List q = new ArrayList();
    private List r = new ArrayList();
    private List s = new ArrayList();
    public bZ(Activity Activity1) {
        int int2;

        m = Activity1;
        n = Activity1.getResources();
        t = PreferenceManager.getDefaultSharedPreferences((Context) m);
        u = k.indexOf(t.getString("text_spec", (String) k.get(1)));
        v = t.getBoolean("is_use_system_brightness", true);
        w = t.getInt("brightness", 50);
        x = t.getBoolean("night_mode", false);
        y = t.getBoolean("convert_t", false);
        z = t.getInt("reader_background_mode", 1);
        int2 = am.b(m).widthPixels;
        c = n.getDimensionPixelSize(2131099677);
        d = n.getDimensionPixelSize(2131099680);
        f = int2 - (c << 1);
        l = n.getDimensionPixelSize(2131099678);
        a(com.clilystudio.netbook.hpay100.a.a.l((Context) m, "reader_opt_full_screen"));
        k();
        c(z);
    }

    public static boolean a(Context Context1) {
        return PreferenceManager.getDefaultSharedPreferences(Context1).getBoolean("night_mode", false);
    }

    private void c(int int1) {
        if (x) {
            g = n.getColor(2131427506);
            h = 2131427505;
            j = 2130838080;
        } else {
            switch (int1) {
                case 1:
                    g = n.getColor(2131427500);
                    h = 2131427494;
                    j = 2130838081;
                    break;
                case 2:
                    g = n.getColor(2131427498);
                    h = 2130838077;
                    j = 2130838078;
                    break;
                case 3:
                    g = n.getColor(2131427499);
                    h = 2131427495;
                    j = 2130838079;
                    break;
                default:
                    break;
            }
        }
        i = Color.argb(153, Color.red(g), Color.green(g), Color.blue(g));
    }

    private void k() {
        float float1 = 1.0F;
        float float2 = (float) n.getDimensionPixelSize(2131099679);

        switch (u) {
            case 0:
                float1 = 0.89999997615814209F;
                break;
            case 2:
                float1 = 1.1499999761581421F;
                break;
            case 3:
                float1 = 1.2999999523162842F;
                break;
            case 4:
                float1 = 1.6000000238418579F;
                break;
            case 5:
                float1 = 1.8999999761581421F;
                break;
            case 1:
            default:
                break;
        }
        a = Math.round(float1 * float2);
        b = Math.round(0.40000000596046448F * (float) a);
    }

    private void l() {
        Iterator Iterator1 = p.iterator();

        while (Iterator1.hasNext())
            ((cc) Iterator1.next()).a();
    }

    private void m() {
        Iterator Iterator1 = q.iterator();

        while (Iterator1.hasNext())
            ((ca) Iterator1.next()).a();
    }

    private void n() {
        SharedPreferences$Editor Editor1 = t.edit();

        Editor1.putString("text_spec", (String) k.get(u));
        Editor1.apply();
    }

    private void o() {
        SharedPreferences$Editor Editor1 = t.edit();

        Editor1.putInt("brightness", w);
        Editor1.putBoolean("is_use_system_brightness", v);
        Editor1.apply();
    }

    private void p() {
        Intent Intent1;

        com.clilystudio.netbook.hpay100.a.a.b((Context) m, "customer_night_theme", x);
        com.clilystudio.netbook.hpay100.a.a.b((Context) m, "night_mode", x);
        if (x) {
            com.clilystudio.netbook.umeng.a.b.a((Context) m, "start_night_theme_page");
            com.clilystudio.netbook.hpay100.a.a.B((Context) m);
        } else
            com.clilystudio.netbook.hpay100.a.a.C((Context) m);
        Intent1 = new Intent();
        Intent1.setAction("broadcastOnThemeChanged");
        m.sendBroadcast(Intent1);
    }

    public final void a() {
        boolean boolean1;
        Iterator Iterator2;

        if (!x)
            boolean1 = true;
        else
            boolean1 = false;
        x = boolean1;
        c(j());
        Iterator2 = o.iterator();
        while (Iterator2.hasNext())
            ((ce) Iterator2.next()).a();
        p();
        com.clilystudio.netbook.event.i.a().c(new com.clilystudio.netbook.event.C(x));
    }

    public final void a(int int1) {
        boolean boolean2 = x;
        Iterator Iterator3;
        SharedPreferences$Editor Editor4;

        x = false;
        c(int1);
        Iterator3 = r.iterator();
        while (Iterator3.hasNext())
            ((cd) Iterator3.next()).a();
        if (boolean2)
            p();
        Editor4 = t.edit();
        Editor4.putInt("reader_background_mode", int1);
        Editor4.apply();
    }

    public final void a(ca ca1) {
        q.add(ca1);
    }

    public final void a(cb cb1) {
        s.add(cb1);
    }

    public final void a(cc cc1) {
        p.add(cc1);
    }

    public final void a(cd cd1) {
        r.add(cd1);
    }

    public final void a(ce ce1) {
        o.add(ce1);
    }

    public final void a(boolean boolean1) {
        int int2;
        int int3;
        int int4;

        if (t.getBoolean("key_enable_imersive_mode", false)) {
            Display Display5 = ((WindowManager) ((Context) m).getSystemService("window")).getDefaultDisplay();
            Point Point6 = new Point();

            Display5.getRealSize(Point6);
            int2 = Point6.y;
        } else
            int2 = com.clilystudio.netbook.hpay100.a.a.L((Context) m);
        int3 = n.getDimensionPixelSize(2131099676);
        int4 = int2 - (d << 1) - (l << 1) - (int3 << 1);
        if (boolean1)
            e = int4;
        else
            e = int4 - am.k((Context) m);
    }

    public final void b() {
        boolean boolean1;
        Iterator Iterator2;
        SharedPreferences$Editor Editor3;

        if (!y)
            boolean1 = true;
        else
            boolean1 = false;
        y = boolean1;
        Iterator2 = s.iterator();
        while (Iterator2.hasNext())
            ((cb) Iterator2.next()).a();
        Editor3 = t.edit();
        Editor3.putBoolean("convert_t", y);
        Editor3.apply();
    }

    public final void b(int int1) {
        w = int1;
        m();
        o();
    }

    public final void b(boolean boolean1) {
        v = boolean1;
        m();
        o();
    }

    public final int c() {
        return u;
    }

    public final void d() {
        if (u < -1 + k.size()) {
            u = 1 + u;
            k();
            l();
            n();
        }
    }

    public final void e() {
        if (u > 0) {
            u = -1 + u;
            k();
            l();
            n();
        }
    }

    public final int f() {
        return w;
    }

    public final boolean g() {
        return v;
    }

    public final boolean h() {
        return x;
    }

    public final boolean i() {
        return y;
    }

    public final int j() {
        int int1 = t.getInt("reader_background_mode", 1);

        z = int1;
        return int1;
    }
}
