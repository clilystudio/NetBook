package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

public class BaseActivity
        extends AppCompatActivity {
    protected b d = b.a();
    private BroadcastReceiver a;

    public BaseActivity() {
        this.a = new J(this);
    }

    protected static UGCNewCollection e() {
        MyApplication myApplication = MyApplication.a();
        if (myApplication.a == null) {
            myApplication.a = new UGCNewCollection();
        }
        return myApplication.a;
    }

    private void a(String string, int n) {
        View view = LayoutInflater.from(this).inflate(n, null);
        this.a().a(view);
        ((TextView) view.findViewById(2131492936)).setText(string);
        view.findViewById(2131493013).setOnClickListener(new R(this));
    }

    public final void a(int n, int n2, aa aa2) {
        this.a(this.getString(n), this.getString(n2), aa2);
    }

    public final void a(int n, String string, int n2, ab ab2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(2130903040, null);
        ((TextView) view.findViewById(2131492936)).setText(2131034565);
        view.findViewById(2131493013).setOnClickListener(new K(this));
        TextView textView = (TextView) view.findViewById(2131493008);
        ImageView imageView = (ImageView) view.findViewById(2131493009);
        textView.setText(string);
        imageView.setImageResource(2130837871);
        textView.setOnClickListener(new L(this, ab2));
        imageView.setOnClickListener(new M(this, ab2));
        this.a().a(view);
    }

    public final void a(int n, String string, aa aa2) {
        this.a(this.getString(n), string, aa2);
    }

    public final void a(String string, int n, int n2, ab ab2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(2130903041, null);
        ((TextView) view.findViewById(2131492936)).setText(string);
        view.findViewById(2131493013).setOnClickListener(new X(this));
        TextView textView = (TextView) view.findViewById(2131493010);
        TextView textView2 = (TextView) view.findViewById(2131493011);
        textView.setText(2131034475);
        textView2.setText(2131034448);
        textView.setOnClickListener(new Y(this, ab2));
        textView2.setOnClickListener(new Z(this, ab2));
        this.a().a(view);
    }

    public final void a(String string, int n, aa aa2) {
        this.a(string, this.getString(n), aa2);
    }

    public final void a(String string, int n, aa aa2, String string2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(2130903070, null);
        ((TextView) view.findViewById(2131492936)).setText(string);
        view.findViewById(2131493013).setOnClickListener(new P(this));
        ImageView imageView = (ImageView) view.findViewById(2131493063);
        imageView.setContentDescription(string2);
        imageView.setImageResource(n);
        imageView.setOnClickListener(new Q(this, aa2));
        this.a().a(view);
    }

    public final void a(String string, String string2, aa aa2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(2130903072, null);
        ((TextView) view.findViewById(2131492936)).setText(string);
        view.findViewById(2131493013).setOnClickListener(new S(this));
        TextView textView = (TextView) view.findViewById(2131493008);
        textView.setText(string2);
        textView.setOnClickListener(new T(this, aa2));
        this.a().a(view);
    }

    public final void b(int n) {
        this.b(this.getString(n));
    }

    public final void b(int n, int n2, aa aa2) {
        String string = this.getString(2131034389);
        this.c();
        View view = LayoutInflater.from(this).inflate(2130903070, null);
        ((TextView) view.findViewById(2131492936)).setText(string);
        view.findViewById(2131493013).setOnClickListener(new N(this));
        ImageView imageView = (ImageView) view.findViewById(2131493063);
        imageView.setImageResource(2130837866);
        imageView.setOnClickListener(new O(this, aa2));
        this.a().a(view);
    }

    public final void b(String string) {
        this.c();
        this.a(string, 2130903043);
    }

    public final void c() {
        android.support.v7.app.a a2 = this.a();
        a2.a(false);
        a2.b(false);
        a2.c(false);
        a2.d(true);
    }

    public final void c(int n) {
        this.c();
        this.a(this.getString(n), 2130903044);
    }

    public final void c(String string) {
        this.c();
        this.a(string, 2130903044);
    }

    public final void d() {
        e.a((Activity) this, (int) 2131034529);
        this.startActivity(AuthLoginActivity.a(this));
    }

    public final void d(int n) {
        View view = this.a().a();
        if (view != null) {
            ((ImageView) view.findViewById(2131493013)).setImageResource(2130837881);
        }
    }

    public final void d(String string) {
        ((TextView) this.a().a().findViewById(2131492936)).setText(string);
    }

    public final void e(String string) {
        ((TextView) this.a().a().findViewById(2131493008)).setText(string);
    }

    protected final void f(String string) {
        try {
            ((TextView) this.a().a().findViewById(2131492936)).setText(string);
            return;
        } catch (Exception var2_2) {
            var2_2.printStackTrace();
            return;
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        if (this.getIntent().getBooleanExtra("EXTRA_OPEN_HOME_WHEN_CLOSE", false)) {
            this.startActivity(new Intent(this, HomeActivity.class));
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a.a((Context) this, "customer_night_theme", false)) {
            this.setTheme(2131165359);
        } else {
            this.setTheme(2131165358);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("broadcastOnThemeChanged");
        this.registerReceiver(this.a, intentFilter);
    }

    @Override
    protected void onDestroy() {
        this.unregisterReceiver(this.a);
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
        com.umeng.a.b.a(this);
        com.a.a.a.b(this);
        com.xiaomi.mistatistic.sdk.b.b();
    }

    @Override
    public void onResume() {
        super.onResume();
        com.umeng.a.b.b(this);
        com.a.a.a.a(this);
        com.xiaomi.mistatistic.sdk.b.a(this, this.getClass().getName());
    }

    public void setCustomActionBar(View view) {
        this.c();
        this.a().a(view);
    }
}
