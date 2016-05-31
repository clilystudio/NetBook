package com.clilystudio.app.netbook.ui;

import android.annotation.TargetApi;
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

import com.clilystudio.app.netbook.AppProperties;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.R;
import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.ui.home.HomeActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.util.e;

public class BaseActivity extends AppCompatActivity {
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        @TargetApi(11)
        public final void onReceive(Context context, Intent intent) {
            BaseActivity.this.recreate();
        }
    };
    protected com.clilystudio.app.netbook.api.b d = com.clilystudio.app.netbook.api.b.a();
    private View mContentView;

    private void a_initContentView(String title, int resource) {
        mContentView = LayoutInflater.from(this).inflate(resource, null);
        setContentView(mContentView);
        ((TextView) mContentView.findViewById(R.id.title)).setText(title);
        mContentView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
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

    public final void a_initContentView(int paramInt1, int paramInt2, aa paramaa) {
        a_setTitleView(getString(paramInt1), getString(paramInt2), paramaa);
    }

    public final void a_initContentView(int paramInt1, String paramString, int paramInt2, final ab paramab) {
        c_init();
        mContentView= LayoutInflater.from(this).inflate(R.layout.ab_custom_text_icon_view, null);
        ((TextView) mContentView.findViewById(R.id.title)).setText(R.string.ugc_list);
        mContentView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView localTextView = (TextView) mContentView.findViewById(R.id.actionbar_custom_right_text);
        ImageView localImageView = (ImageView) mContentView.findViewById(R.id.actionbar_custom_right_icon);
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
        setContentView(mContentView);
    }

    public final void a_initContentView(int paramInt, String paramString, aa paramaa) {
        a_setTitleView(getString(paramInt), paramString, paramaa);
    }

    public final void a_initContentView(String paramString, int paramInt1, int paramInt2, final ab paramab) {
        c_init();
        mContentView = LayoutInflater.from(this).inflate(R.layout.ab_custom_two_text_view, null);
        ((TextView) mContentView.findViewById(R.id.title)).setText(paramString);
        mContentView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView localTextView1 = (TextView) mContentView.findViewById(R.id.ab_custom_right_text);
        TextView localTextView2 = (TextView) mContentView.findViewById(R.id.ab_custom_right_text_2);
        localTextView1.setText(R.string.save);
        localTextView2.setText(R.string.publish);
        localTextView1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramab.a();
            }
        });
        localTextView2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramab.b();
            }
        });
        setContentView(mContentView);
    }

    public final void a_initContentView(String paramString, int paramInt, aa paramaa) {
        a_setTitleView(paramString, getString(paramInt), paramaa);
    }

    public final void a_initContentView(String paramString1, int paramInt, final aa paramaa, String paramString2) {
        c_init();
        mContentView = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_icon_view, null);
        ((TextView) mContentView.findViewById(R.id.title)).setText(paramString1);
        mContentView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        ImageView localImageView = (ImageView) mContentView.findViewById(R.id.ab_icon);
        localImageView.setContentDescription(paramString2);
        localImageView.setImageResource(paramInt);
        localImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramaa.a();
            }
        });
        setContentView(mContentView);
    }

    public final void a_setTitleView(String title, String rightText, final aa paramaa) {
        c_init();
        mContentView = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_text_view, null);
        ((TextView) mContentView.findViewById(R.id.title)).setText(title);
        mContentView.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });
        TextView localTextView = (TextView) mContentView.findViewById(R.id.actionbar_custom_right_text);
        localTextView.setText(rightText);
        localTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramaa.a();
            }
        });
        setContentView(mContentView);
    }

    public final void b_initContentView(int paramInt) {
        b_initContentView(getString(paramInt));
    }

    public final void b_initContentView(int paramInt1, int paramInt2, final aa paramaa) {
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
        ImageView localImageView = (ImageView) localView.findViewById(R.id.ab_icon);
        localImageView.setImageResource(R.drawable.ic_action_edit);
        localImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                paramaa.a();
            }
        });
        setContentView(localView);
    }

    public final void b_initContentView(String paramString) {
        c_init();
        a_initContentView(paramString, R.layout.ab_title);
    }

    public final void c_init() {
        super.setFinishOnTouchOutside(false);
        super.setImmersive(false);
        super.setProgressBarIndeterminate(false);
        super.setProgressBarVisibility(true);
    }

    public final void c_initContentView(int paramInt) {
        c_init();
        a_initContentView(getString(paramInt), R.layout.ab_title_dark);
    }

    public final void c_initContentView(String paramString) {
        c_init();
        a_initContentView(paramString, R.layout.ab_title_dark);
    }

    public final void d() {
        e.a(this, R.string.token_invalid);
        startActivity(AuthLoginActivity.a(this));
    }

    public final void d_setBackIcon(int paramInt) {
        if (mContentView != null)
            ((ImageView) mContentView.findViewById(R.id.back)).setImageResource(R.drawable.ic_close_white_24dp);
    }

    public final void d_setTitle(String paramString) {
        ((TextView) mContentView.findViewById(R.id.title)).setText(paramString);
    }

    public final void d_setRight(String paramString) {
        ((TextView) mContentView.findViewById(R.id.actionbar_custom_right_text)).setText(paramString);
    }

    protected final void f_setTitle(String paramString) {
        ((TextView)mContentView.findViewById(R.id.title)).setText(paramString);
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
        registerReceiver(this.mReceiver, filter);
    }

    protected void onDestroy() {
        unregisterReceiver(this.mReceiver);
        super.onDestroy();
    }

    public void setCustomActionBar(View view) {
        c_init();
        setContentView(view);
    }
}
