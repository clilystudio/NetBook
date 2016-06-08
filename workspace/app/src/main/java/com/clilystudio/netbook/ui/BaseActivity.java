package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

public class BaseActivity extends AppCompatActivity {
    protected com.clilystudio.netbook.api.b d = com.clilystudio.netbook.api.b.a();
    private BroadcastReceiver a = new J(this);

    protected static UGCNewCollection e() {
        MyApplication localMyApplication = MyApplication.a();
        if (localMyApplication.a == null)
            localMyApplication.a = new UGCNewCollection();
        return localMyApplication.a;
    }

    private void a(String paramString, int paramInt) {
        View localView = LayoutInflater.from(this).inflate(paramInt, null);
        a().a(localView);
        ((TextView) localView.findViewById(2131492936)).setText(paramString);
        localView.findViewById(2131493013).setOnClickListener(new R(this));
    }

    public final void a(int paramInt1, int paramInt2, aa paramaa) {
        a(getString(paramInt1), getString(paramInt2), paramaa);
    }

    public final void a(int paramInt1, String paramString, int paramInt2, ab paramab) {
        c();
        View localView = LayoutInflater.from(this).inflate(2130903040, null);
        ((TextView) localView.findViewById(2131492936)).setText(2131034565);
        localView.findViewById(2131493013).setOnClickListener(new K(this));
        TextView localTextView = (TextView) localView.findViewById(2131493008);
        ImageView localImageView = (ImageView) localView.findViewById(2131493009);
        localTextView.setText(paramString);
        localImageView.setImageResource(2130837871);
        localTextView.setOnClickListener(new L(this, paramab));
        localImageView.setOnClickListener(new M(this, paramab));
        a().a(localView);
    }

    public final void a(int paramInt, String paramString, aa paramaa) {
        a(getString(paramInt), paramString, paramaa);
    }

    public final void a(String paramString, int paramInt1, int paramInt2, ab paramab) {
        c();
        View localView = LayoutInflater.from(this).inflate(2130903041, null);
        ((TextView) localView.findViewById(2131492936)).setText(paramString);
        localView.findViewById(2131493013).setOnClickListener(new X(this));
        TextView localTextView1 = (TextView) localView.findViewById(2131493010);
        TextView localTextView2 = (TextView) localView.findViewById(2131493011);
        localTextView1.setText(2131034475);
        localTextView2.setText(2131034448);
        localTextView1.setOnClickListener(new Y(this, paramab));
        localTextView2.setOnClickListener(new Z(this, paramab));
        a().a(localView);
    }

    public final void a(String paramString, int paramInt, aa paramaa) {
        a(paramString, getString(paramInt), paramaa);
    }

    public final void a(String paramString1, int paramInt, aa paramaa, String paramString2) {
        c();
        View localView = LayoutInflater.from(this).inflate(2130903070, null);
        ((TextView) localView.findViewById(2131492936)).setText(paramString1);
        localView.findViewById(2131493013).setOnClickListener(new P(this));
        ImageView localImageView = (ImageView) localView.findViewById(2131493063);
        localImageView.setContentDescription(paramString2);
        localImageView.setImageResource(paramInt);
        localImageView.setOnClickListener(new Q(this, paramaa));
        a().a(localView);
    }

    public final void a(String paramString1, String paramString2, aa paramaa) {
        c();
        View localView = LayoutInflater.from(this).inflate(2130903072, null);
        ((TextView) localView.findViewById(2131492936)).setText(paramString1);
        localView.findViewById(2131493013).setOnClickListener(new S(this));
        TextView localTextView = (TextView) localView.findViewById(2131493008);
        localTextView.setText(paramString2);
        localTextView.setOnClickListener(new T(this, paramaa));
        a().a(localView);
    }

    public final void b(int paramInt) {
        b(getString(paramInt));
    }

    public final void b(int paramInt1, int paramInt2, aa paramaa) {
        String str = getString(2131034389);
        c();
        View localView = LayoutInflater.from(this).inflate(2130903070, null);
        ((TextView) localView.findViewById(2131492936)).setText(str);
        localView.findViewById(2131493013).setOnClickListener(new N(this));
        ImageView localImageView = (ImageView) localView.findViewById(2131493063);
        localImageView.setImageResource(2130837866);
        localImageView.setOnClickListener(new O(this, paramaa));
        a().a(localView);
    }

    public final void b(String paramString) {
        c();
        a(paramString, 2130903043);
    }

    public final void c() {
        android.support.v7.app.a locala = a();
        locala.a(false);
        locala.b(false);
        locala.c(false);
        locala.d(true);
    }

    public final void c(int paramInt) {
        c();
        a(getString(paramInt), 2130903044);
    }

    public final void c(String paramString) {
        c();
        a(paramString, 2130903044);
    }

    public final void d() {
        e.a(this, 2131034529);
        startActivity(AuthLoginActivity.a(this));
    }

    public final void d(int paramInt) {
        View localView = a().a();
        if (localView != null)
            ((ImageView) localView.findViewById(2131493013)).setImageResource(2130837881);
    }

    public final void d(String paramString) {
        ((TextView) a().a().findViewById(2131492936)).setText(paramString);
    }

    public final void e(String paramString) {
        ((TextView) a().a().findViewById(2131493008)).setText(paramString);
    }

    protected final void f(String paramString) {
        try {
            ((TextView) a().a().findViewById(2131492936)).setText(paramString);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
        if (getIntent().getBooleanExtra("EXTRA_OPEN_HOME_WHEN_CLOSE", false))
            startActivity(new Intent(this, HomeActivity.class));
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        if (com.arcsoft.hpay100.a.a.a(this, "customer_night_theme", false))
            setTheme(2131165359);
        while (true) {
            IntentFilter localIntentFilter = new IntentFilter();
            localIntentFilter.addAction("broadcastOnThemeChanged");
            registerReceiver(this.a, localIntentFilter);
            return;
            setTheme(2131165358);
        }
    }

    protected void onDestroy() {
        unregisterReceiver(this.a);
        super.onDestroy();
    }

    public void onPause() {
        super.onPause();
        com.umeng.a.b.a(this);
        com.a.a.a.b(this);
        com.xiaomi.mistatistic.sdk.b.b();
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.b(this);
        com.a.a.a.a(this);
        com.xiaomi.mistatistic.sdk.b.a(this, getClass().getName());
    }

    public void setCustomActionBar(View paramView) {
        c();
        a().a(paramView);
    }
}

