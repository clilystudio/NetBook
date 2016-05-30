package com.clilystudio.app.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.app.netbook.AppProperties;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.R;
import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.ui.home.HomeActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.util.e;

public class BaseActivity extends AppCompatActivity {
    private BroadcastReceiver a = new J(this);
    protected com.clilystudio.app.netbook.api.b d = com.clilystudio.app.netbook.api.b.a();

    private void a(String title, int resource) {
        View localView = LayoutInflater.from(this).inflate(resource, null);
        setContentView(localView);
        ((TextView) localView.findViewById(R.id.title)).setText(title);
        localView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
    }

    protected static UGCNewCollection e() {
        MyApplication localMyApplication = MyApplication.a_getInstance();
        if (localMyApplication.a == null)
            localMyApplication.a = new UGCNewCollection();
        return localMyApplication.a;
    }

    public final void a(int paramInt1, int paramInt2, aa paramaa) {
        a_setTitleView(getString(paramInt1), getString(paramInt2), paramaa);
    }

    public final void a(int paramInt1, String paramString, int paramInt2, final ab paramab) {
        c_init();
        View localView = LayoutInflater.from(this).inflate(R.layout.ab_custom_text_icon_view, null);
        ((TextView) localView.findViewById(R.id.title)).setText(R.string.ugc_list);
        localView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView localTextView = (TextView) localView.findViewById(R.id.actionbar_custom_right_text);
        ImageView localImageView = (ImageView) localView.findViewById(R.id.actionbar_custom_right_icon);
        localTextView.setText(paramString);
        localImageView.setImageResource(R.drawable.ic_action_overflow);
        localTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramab.a();
            }
        });
        localImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramab.b();
            }
        });
        setContentView(localView);
    }

    public final void a(int paramInt, String paramString, aa paramaa) {
        a_setTitleView(getString(paramInt), paramString, paramaa);
    }

    public final void a(String paramString, int paramInt1, int paramInt2, ab paramab) {
        c_init();
        View localView = LayoutInflater.from(this).inflate(2130903041, null);
        ((TextView) localView.findViewById(R.id.title)).setText(paramString);
        localView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView localTextView1 = (TextView) localView.findViewById(2131493010);
        TextView localTextView2 = (TextView) localView.findViewById(2131493011);
        localTextView1.setText(2131034475);
        localTextView2.setText(2131034448);
        localTextView1.setOnClickListener(new Y(this, paramab));
        localTextView2.setOnClickListener(new Z(this, paramab));
        setContentView(localView);
    }

    public final void a(String paramString, int paramInt, aa paramaa) {
        a_setTitleView(paramString, getString(paramInt), paramaa);
    }

    public final void a(String paramString1, int paramInt, aa paramaa, String paramString2) {
        c_init();
        View localView = LayoutInflater.from(this).inflate(2130903070, null);
        ((TextView) localView.findViewById(R.id.title)).setText(paramString1);
        localView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        ImageView localImageView = (ImageView) localView.findViewById(2131493063);
        localImageView.setContentDescription(paramString2);
        localImageView.setImageResource(paramInt);
        localImageView.setOnClickListener(new Q(this, paramaa));
        setContentView(localView);
    }

    public final void a_setTitleView(String title, String rightText, aa paramaa) {
        c_init();
        View localView = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_text_view, null);
        ((TextView) localView.findViewById(R.id.title)).setText(title);
        localView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView localTextView = (TextView) localView.findViewById(R.id.actionbar_custom_right_text);
        localTextView.setText(rightText);
        localTextView.setOnClickListener(new T(this, paramaa));
        setContentView(localView);
    }

    public final void b(int paramInt) {
        b(getString(paramInt));
    }

    public final void b(int paramInt1, int paramInt2, aa paramaa) {
        String str = getString(R.string.game_detail);
        c_init();
        View localView = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_icon_view, null);
        ((TextView) localView.findViewById(R.id.title)).setText(str);
        localView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        ImageView localImageView = (ImageView) localView.findViewById(2131493063);
        localImageView.setImageResource(2130837866);
        localImageView.setOnClickListener(new O(this, paramaa));
        setContentView(localView);
    }

    public final void b(String paramString) {
        c_init();
        a(paramString, 2130903043);
    }

    public final void c_init() {
        super.setFinishOnTouchOutside(false);
        super.setImmersive(false);
        super.setProgressBarIndeterminate(false);
        super.setProgressBarVisibility(true);
    }

    public final void c(int paramInt) {
        c_init();
        a(getString(paramInt), R.layout.ab_title_dark);
    }

    public final void c(String paramString) {
        c_init();
        a(paramString, 2130903044);
    }

    public final void d() {
        e.a(this, R.string.token_invalid);
        startActivity(AuthLoginActivity.a(this));
    }

    public final void d(int paramInt) {
        View localView = a().a();
        if (localView != null)
            ((ImageView) localView.findViewById(R.id.back)).setImageResource(R.drawable.ic_close_white_24dp);
    }

    public final void d(String paramString) {
        ((TextView) a().a().findViewById(R.id.title)).setText(paramString);
    }

    public final void e(String paramString) {
        ((TextView) a().a().findViewById(R.id.actionbar_custom_right_text)).setText(paramString);
    }

    protected final void f(String paramString) {
        try {
            ((TextView) a().a().findViewById(R.id.title)).setText(paramString);
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
        if (getIntent().getBooleanExtra("EXTRA_OPEN_HOME_WHEN_CLOSE", false)) {
            startActivity(new Intent(this, HomeActivity.class));
        }
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        if (AppProperties.getInstance(this).getProperty("customer_night_theme", false)) {
            setTheme(R.style.BaseTheme_Dark);
        } else {
            setTheme(R.style.BaseTheme);
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("broadcastOnThemeChanged");
        registerReceiver(this.a, filter);
    }

    protected void onDestroy() {
        unregisterReceiver(this.a);
        super.onDestroy();
    }

    public void setCustomActionBar(View view) {
        c_init();
        setContentView(view);
    }
}
