package com.clilystudio.netbook.ui;

import android.app.ActionBar;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.ToastUtil;

public class BaseActivity extends AppCompatActivity {
    protected ApiServiceProvider d = ApiServiceProvider.getInstance();
    private BroadcastReceiver a;

    public BaseActivity() {
        this.a = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                recreate();
            }
        };
    }

    private void a(String string, int n) {
        View view = LayoutInflater.from(this).inflate(n, null);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
            ((TextView) view.findViewById(R.id.title)).setText(string);
            view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    onBackPressed();
                }
            });
        }
    }

    public final void a(int n, int n2, BaseCallBack aa2) {
        this.a(this.getString(n), this.getString(n2), aa2);
    }

    public final void a(int n, String string, int n2, final ActionBarClickListener ab2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.ab_custom_text_icon_view, (ViewGroup) getWindow().getDecorView(), false);
        ((TextView) view.findViewById(R.id.title)).setText(n);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.actionbar_custom_right_text);
        ImageView imageView = (ImageView) view.findViewById(R.id.actionbar_custom_right_icon);
        textView.setText(string);
        imageView.setImageResource(n2);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.onTextClick();
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.onIconClick();
            }
        });
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
        }
    }

    public final void a(int n, String string, BaseCallBack aa2) {
        this.a(this.getString(n), string, aa2);
    }

    public final void a(String string, int n, int n2, final ActionBarClickListener ab2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.ab_custom_two_text_view, (ViewGroup) getWindow().getDecorView(), false);
        ((TextView) view.findViewById(R.id.title)).setText(string);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView textView = (TextView) view.findViewById(n);    // R.id.ab_custom_right_text
        TextView textView2 = (TextView) view.findViewById(n2);    // R.id.ab_custom_right_text_2
        textView.setText(R.string.save);
        textView2.setText(R.string.publish);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.onTextClick();
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ab2.onIconClick();
            }
        });
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
        }
    }

    public final void a(String string, int n, BaseCallBack aa2) {
        this.a(string, this.getString(n), aa2);
    }

    public final void a(String string, int n, final BaseCallBack aa2, String string2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_icon_view, (ViewGroup) getWindow().getDecorView(), false);
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
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
        }
    }

    public final void a(String string, String string2, final BaseCallBack aa2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_text_view, (ViewGroup) getWindow().getDecorView(), false);
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
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
        }
    }

    public final void b(int n) {
        this.b(this.getString(n));
    }

    public final void b(int n, int n2, final BaseCallBack aa2) {
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_icon_view, (ViewGroup) getWindow().getDecorView(), false);
        ((TextView) view.findViewById(R.id.title)).setText(n);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        ImageView imageView = (ImageView) view.findViewById(R.id.ab_icon);
        imageView.setImageResource(n2);
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                aa2.a();
            }
        });
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
        }
    }

    public final void b(String string) {
        this.c();
        this.a(string, R.layout.ab_title);
    }

    public final void c() {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayUseLogoEnabled(false);
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(false);
            actionBar.setDisplayShowTitleEnabled(false);
            actionBar.setDisplayShowCustomEnabled(true);
        }
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
        ToastUtil.showToast(this, R.string.token_invalid);
        this.startActivity(AuthLoginActivity.a(this));
    }

    public final void d(int n) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            View view = actionBar.getCustomView();
            if (view != null) {
                ((ImageView) view.findViewById(R.id.back)).setImageResource(n);
            }
        }
    }

    public final void d(String string) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            View view = actionBar.getCustomView();
            if (view != null) {
                ((TextView) view.findViewById(R.id.title)).setText(string);
            }
        }
    }

    public final void e(String string) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            View view = actionBar.getCustomView();
            if (view != null) {
                ((TextView) view.findViewById(R.id.actionbar_custom_right_text)).setText(string);
            }
        }
    }

    protected final void f(String string) {
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            View view = actionBar.getCustomView();
            if (view != null) {
                ((TextView) view.findViewById(R.id.title)).setText(string);
            }
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
        if (com.clilystudio.netbook.util.a.a(this, "customer_night_theme", false)) {
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

    public void setCustomActionBar(View view) {
        this.c();
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setCustomView(view);
        }
    }
}
