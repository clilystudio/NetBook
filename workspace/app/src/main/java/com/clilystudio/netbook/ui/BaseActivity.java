package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

public class BaseActivity extends AppCompatActivity {

    protected com.clilystudio.netbook.api.b d = com.clilystudio.netbook.api.b.a();
    private BroadcastReceiver a = new J(this);

    protected static UGCNewCollection e() {
        MyApplication MyApplication1 = MyApplication.a();

        if (MyApplication1.a == null)
            MyApplication1.a = new UGCNewCollection();
        return MyApplication1.a;
    }

    private void a(String String1, int int2) {
        View View3 = LayoutInflater.from((Context) this).inflate(int2, null);

        a().a(View3);
        ((TextView) View3.findViewById(2131492936)).setText((CharSequence) String1);
        View3.findViewById(2131493013).setOnClickListener((View$OnClickListener) new R(this));
    }

    public final void a(int int1, int int2, aa aa3) {
        a(getString(int1), getString(int2), aa3);
    }

    public final void a(int int1, String String2, int int3, ab ab4) {
        View View5;
        TextView TextView6;
        ImageView ImageView7;

        c();
        View5 = LayoutInflater.from((Context) this).inflate(2130903040, null);
        ((TextView) View5.findViewById(2131492936)).setText(2131034565);
        View5.findViewById(2131493013).setOnClickListener((View$OnClickListener) new K(this));
        TextView6 = (TextView) View5.findViewById(2131493008);
        ImageView7 = (ImageView) View5.findViewById(2131493009);
        TextView6.setText((CharSequence) String2);
        ImageView7.setImageResource(2130837871);
        TextView6.setOnClickListener((View$OnClickListener) new L(this, ab4));
        ImageView7.setOnClickListener((View$OnClickListener) new M(this, ab4));
        a().a(View5);
    }

    public final void a(int int1, String String2, aa aa3) {
        a(getString(int1), String2, aa3);
    }

    public final void a(String String1, int int2, int int3, ab ab4) {
        View View5;
        TextView TextView6;
        TextView TextView7;

        c();
        View5 = LayoutInflater.from((Context) this).inflate(2130903041, null);
        ((TextView) View5.findViewById(2131492936)).setText((CharSequence) String1);
        View5.findViewById(2131493013).setOnClickListener((View$OnClickListener) new X(this));
        TextView6 = (TextView) View5.findViewById(2131493010);
        TextView7 = (TextView) View5.findViewById(2131493011);
        TextView6.setText(2131034475);
        TextView7.setText(2131034448);
        TextView6.setOnClickListener((View$OnClickListener) new Y(this, ab4));
        TextView7.setOnClickListener((View$OnClickListener) new Z(this, ab4));
        a().a(View5);
    }

    public final void a(String String1, int int2, aa aa3) {
        a(String1, getString(int2), aa3);
    }

    public final void a(String String1, int int2, aa aa3, String String4) {
        View View5;
        ImageView ImageView6;

        c();
        View5 = LayoutInflater.from((Context) this).inflate(2130903070, null);
        ((TextView) View5.findViewById(2131492936)).setText((CharSequence) String1);
        View5.findViewById(2131493013).setOnClickListener((View$OnClickListener) new P(this));
        ImageView6 = (ImageView) View5.findViewById(2131493063);
        ImageView6.setContentDescription((CharSequence) String4);
        ImageView6.setImageResource(int2);
        ImageView6.setOnClickListener((View$OnClickListener) new Q(this, aa3));
        a().a(View5);
    }

    public final void a(String String1, String String2, aa aa3) {
        View View4;
        TextView TextView5;

        c();
        View4 = LayoutInflater.from((Context) this).inflate(2130903072, null);
        ((TextView) View4.findViewById(2131492936)).setText((CharSequence) String1);
        View4.findViewById(2131493013).setOnClickListener((View$OnClickListener) new S(this));
        TextView5 = (TextView) View4.findViewById(2131493008);
        TextView5.setText((CharSequence) String2);
        TextView5.setOnClickListener((View$OnClickListener) new T(this, aa3));
        a().a(View4);
    }

    public final void b(int int1) {
        b(getString(int1));
    }

    public final void b(int int1, int int2, aa aa3) {
        Object Object4 = getString(2131034389);
        View View5;
        ImageView ImageView6;

        c();
        View5 = LayoutInflater.from((Context) this).inflate(2130903070, null);
        ((TextView) View5.findViewById(2131492936)).setText((CharSequence) Object4);
        View5.findViewById(2131493013).setOnClickListener((View$OnClickListener) new N(this));
        ImageView6 = (ImageView) View5.findViewById(2131493063);
        ImageView6.setImageResource(2130837866);
        ImageView6.setOnClickListener((View$OnClickListener) new O(this, aa3));
        a().a(View5);
    }

    public final void b(String String1) {
        c();
        a(String1, 2130903043);
    }

    public final void c() {
        android.support.v7.app.a a1 = a();

        a1.a(false);
        a1.b(false);
        a1.c(false);
        a1.d(true);
    }

    public final void c(int int1) {
        c();
        a(getString(int1), 2130903044);
    }

    public final void c(String String1) {
        c();
        a(String1, 2130903044);
    }

    public final void d() {
        e.a((Activity) this, 2131034529);
        startActivity(AuthLoginActivity.a((Context) this));
    }

    public final void d(int int1) {
        View View2 = a().a();

        if (View2 != null)
            ((ImageView) View2.findViewById(2131493013)).setImageResource(2130837881);
    }

    public final void d(String String1) {
        ((TextView) a().a().findViewById(2131492936)).setText((CharSequence) String1);
    }

    public final void e(String String1) {
        ((TextView) a().a().findViewById(2131493008)).setText((CharSequence) String1);
    }

    protected final void f(String String1) {
        try {
            ((TextView) a().a().findViewById(2131492936)).setText((CharSequence) String1);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onBackPressed() {
    }

    protected void onCreate(Bundle Bundle1) {
        IntentFilter IntentFilter2;

        super.onCreate(Bundle1);
        if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false))
            setTheme(2131165359);
        else
            setTheme(2131165358);
        IntentFilter2 = new IntentFilter();
        IntentFilter2.addAction("broadcastOnThemeChanged");
        registerReceiver(a, IntentFilter2);
    }

    protected void onDestroy() {
        unregisterReceiver(a);
        super.onDestroy();
    }

    public void onPause() {
        super.onPause();
        com.umeng.a.b.a((Context) this);
        com.a.a.a.b((Context) this);
        com.xiaomi.mistatistic.sdk.b.b();
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.b((Context) this);
        com.a.a.a.a((Context) this);
        com.xiaomi.mistatistic.sdk.b.a((Activity) this, getClass().getName());
    }

    public void setCustomActionBar(View View1) {
        c();
        a().a(View1);
    }
}
