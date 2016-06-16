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
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

public class BaseActivity extends AppCompatActivity {
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
        ((TextView) view.findViewById(R.id.title)).setText(string);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
    }

    public final void a(int n, int n2, aa aa2) {
        this.a(this.getString(n), this.getString(n2), aa2);
    }

    public final void a(int n, String string, int n2, final ab ab2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.ab_custom_text_icon_view, null);
        ((TextView) view.findViewById(R.id.title)).setText(R.string.ugc_list);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.actionbar_custom_right_text);
        ImageView imageView = (ImageView) view.findViewById(R.id.actionbar_custom_right_icon);
        textView.setText(string);
        imageView.setImageResource(R.drawable.ic_action_overflow);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.a();
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.b();
            }
        });
        this.a().a(view);
    }

    public final void a(int n, String string, aa aa2) {
        this.a(this.getString(n), string, aa2);
    }

    public final void a(String string, int n, int n2, final ab ab2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.ab_custom_two_text_view, null);
        ((TextView) view.findViewById(R.id.title)).setText(string);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.ab_custom_right_text);
        TextView textView2 = (TextView) view.findViewById(R.id.ab_custom_right_text_2);
        textView.setText(R.string.save);
        textView2.setText(R.string.publish);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.a();
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.b();
            }
        });
        this.a().a(view);
    }

    public final void a(String string, int n, aa aa2) {
        this.a(string, this.getString(n), aa2);
    }

    public final void a(String string, int n, final aa aa2, String string2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_icon_view, null);
        ((TextView) view.findViewById(R.id.title)).setText(string);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        ImageView imageView = (ImageView) view.findViewById(R.id.ab_icon);
        imageView.setContentDescription(string2);
        imageView.setImageResource(n);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                aa2.a();
            }
        });
        this.a().a(view);
    }

    public final void a(String string, String string2, final aa aa2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_text_view, null);
        ((TextView) view.findViewById(R.id.title)).setText(string);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.actionbar_custom_right_text);
        textView.setText(string2);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                aa2.a();
            }
        });
        this.a().a(view);
    }

    public final void b(int n) {
        this.b(this.getString(n));
    }

    public final void b(int n, int n2, final aa aa2) {
        String string = this.getString(R.string.game_detail);
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_icon_view, null);
        ((TextView) view.findViewById(R.id.title)).setText(string);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        ImageView imageView = (ImageView) view.findViewById(R.id.ab_icon);
        imageView.setImageResource(R.drawable.ic_action_edit);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                aa2.a();
            }
        });
        this.a().a(view);
    }

    public final void b(String string) {
        this.c();
        this.a(string, R.layout.ab_title);
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
        this.a(this.getString(n), R.layout.ab_title_dark);
    }

    public final void c(String string) {
        this.c();
        this.a(string, R.layout.ab_title_dark);
    }

    public final void d() {
        e.a((Activity) this, (int) R.string.token_invalid);
        this.startActivity(AuthLoginActivity.a(this));
    }

    public final void d(int n) {
        View view = this.a().a();
        if (view != null) {
            ((ImageView) view.findViewById(R.id.back)).setImageResource(R.drawable.ic_close_white_24dp);
        }
    }

    public final void d(String string) {
        ((TextView) this.a().a().findViewById(R.id.title)).setText(string);
    }

    public final void e(String string) {
        ((TextView) this.a().a().findViewById(R.id.actionbar_custom_right_text)).setText(string);
    }

    protected final void f(String string) {
        try {
            ((TextView) this.a().a().findViewById(R.id.title)).setText(string);
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
            this.setTheme(R.style.BaseTheme_Dark);
        } else {
            this.setTheme(R.style.BaseTheme);
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
