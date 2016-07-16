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
import com.clilystudio.netbook.util.TempUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ThemeChangedEvent;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class ReaderStyle {
    private static final List<String> k = Arrays.asList("s", "m", "l", "xl", "xxl", "3xl");
    private final Activity m;
    private final Resources n;
    public int textSize;
    public int lineSpacing;
    public int paddingHori;
    public int paddingVert;
    public int bodyHeight;
    public int width;
    public int bodyColor;
    public int h;
    public int titleColor;
    public int batteryBackground;
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
    private boolean mNeedConvert;
    private int z;

    public ReaderStyle(Activity activity) {
        this.m = activity;
        this.n = activity.getResources();
        this.t = PreferenceManager.getDefaultSharedPreferences(this.m);
        this.u = k.indexOf(this.t.getString("text_spec", k.get(1)));
        this.v = this.t.getBoolean("is_use_system_brightness", true);
        this.w = this.t.getInt("brightness", 50);
        this.x = this.t.getBoolean("night_mode", false);
        this.mNeedConvert = this.t.getBoolean("convert_t", false);
        this.z = this.t.getInt("reader_background_mode", 1);
        int n = CommonUtil.getDisplayMetrics(this.m).widthPixels;
        this.paddingHori = this.n.getDimensionPixelSize(R.dimen.page_horizontal_padding);
        this.paddingVert = this.n.getDimensionPixelSize(R.dimen.page_vertical_padding);
        this.width = n - (this.paddingHori << 1);
        this.l = this.n.getDimensionPixelSize(R.dimen.page_small_text_height);
        this.a(TempUtil.getBoolPref(this.m, "reader_opt_full_screen",true));
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
            this.bodyColor = this.n.getColor(R.color.reading_night_text_color);
            this.h = R.color.reading_night_background_color;
            this.batteryBackground = R.drawable.reader_battery_bg_night;
        } else {
            switch (n) {
                case 1:
                    this.bodyColor = this.n.getColor(R.color.reader_mode_white_text_color);
                    this.h = R.color.reader_background_white_color;
                    this.batteryBackground = R.drawable.reader_battery_bg_normal;
                    break;
                case 2:
                    this.bodyColor = this.n.getColor(R.color.reader_mode_brown_text_color);
                    this.h = R.drawable.reader_background_brown_big_img;
                    this.batteryBackground = R.drawable.reader_battery_bg_brown;
                    break;
                case 3:
                    this.bodyColor = this.n.getColor(R.color.reader_mode_green_text_color);
                    this.h = R.color.reader_background_white_green;
                    this.batteryBackground = R.drawable.reader_battery_bg_green;
                    break;
            }
        }
        this.titleColor = Color.argb(153, Color.red(this.bodyColor), Color.green(this.bodyColor), Color.blue(this.bodyColor));
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
        this.textSize = Math.round(var1_1 * var2_2);
        this.lineSpacing = Math.round(0.4f * (float) this.textSize);
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
        TempUtil.putBoolPref(this.m, "customer_night_theme", this.x);
        TempUtil.putBoolPref(this.m, "night_mode", this.x);
        if (this.x) {
            TempUtil.putLongPref(this.m, "start_night_theme", new Date().getTime());
        } else {
            TempUtil.putIntPref(this.m, "start_night_theme", 0);
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
            n = TempUtil.getWindowHeight(this.m);
        }
        int n2 = this.n.getDimensionPixelSize(R.dimen.page_body_margin);
        int n3 = n - (this.paddingVert << 1) - (this.l << 1) - (n2 << 1);
        if (bl) {
            this.bodyHeight = n3;
            return;
        }
        this.bodyHeight = n3 - CommonUtil.getStatusBarHeight(this.m);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void b() {
        this.mNeedConvert = !this.mNeedConvert;
        Iterator<cb> iterator = this.s.iterator();
        do {
            if (!iterator.hasNext()) {
                SharedPreferences.Editor editor = this.t.edit();
                editor.putBoolean("convert_t", this.mNeedConvert);
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

    public final boolean needCovert() {
        return this.mNeedConvert;
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
