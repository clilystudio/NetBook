package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.g;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.u;
import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.netbook.util.e;
import com.umeng.a.b;
import com.umeng.onlineconfig.OnlineConfigAgent;

public class SettingsActivity extends BaseActivity implements View.OnClickListener {
    private int a;

    private static void a(View view, boolean bl) {
        if (bl) {
            view.setContentDescription("\u5df2\u5f00\u542f");
            return;
        }
        view.setContentDescription("\u5df2\u5173\u95ed");
    }

    static /* synthetic */ void a(final SettingsActivity settingsActivity) {
        h h2 = new h(settingsActivity);
        h2.a(R.string.user_logout_dialog);
        h2.b(R.string.user_logout_dialog_tips);
        h2.b(R.string.cancel, null);
        h2.a(R.string.user_logout, new DialogInterface.OnClickListener(){

            @Override
            public void onClick(DialogInterface dialog, int which) {
                SettingsActivity.c(settingsActivity);
           }
        });
        h2.a().show();
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity, int n, String string) {
        if (settingsActivity.a != n) {
            settingsActivity.a = n;
            a.b((Context) settingsActivity, "key_shelf_sort", settingsActivity.a);
            ((TextView) settingsActivity.findViewById(R.id.settings_shelf_sort_value)).setText(string);
            i.a().c(new g());
        }
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity, View view, boolean bl) {
        SettingsActivity.a(view, bl);
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity, boolean bl) {
        if (bl) {
            d.a(settingsActivity.getApplicationContext(), "2882303761517133731", "5941713373731");
            return;
        }
        d.e(settingsActivity.getApplicationContext());
    }

    static /* synthetic */ void b(SettingsActivity settingsActivity) {
        String string = am.n((Context) settingsActivity);
        if (!TextUtils.isEmpty(string)) {
            k k2 = new k(settingsActivity);
            k2.b(string);
            k2.a("OK", null);
            k2.c();
        }
    }

    static /* synthetic */ void c(SettingsActivity settingsActivity) {
        e.a((Activity) settingsActivity, (String) "\u5df2\u767b\u51fa");
        new Thread(new Runnable() {
            @Override
            public void run() {
                com.clilystudio.netbook.api.b.b().P(am.e().getToken());
            }
        }).start();
        MyApplication.a().a("account.token", "user.id", "user.name", "user.avatar", "user.lv", "user.gender");
        a.e((Context) settingsActivity, "pref_new_unimp_notif_time", "0");
        a.e((Context) settingsActivity, "pref_new_imp_notif_time", "0");
        a.b((Context) settingsActivity, "remove_ad_duration", 0);
        settingsActivity.finish();
        i.a().c(new u());
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.settings_shelf_sort: {
                h h2 = new h(this);
                int[] arrn = new int[]{R.id.sort_by_time, R.id.sort_by_read};
                final int[] arrn2 = new int[]{R.string.setting_sort_time, R.string.setting_sort_read};
                View view2 = this.getLayoutInflater().inflate(R.layout.setting_shelf_sort, null, false);
                h2.d = "\u4e66\u67b6\u6392\u5e8f\u65b9\u5f0f";
                final AlertDialog alertDialog = h2.a(view2).b("\u53d6\u6d88", null).a();
                ((RadioGroup) view2.findViewById(R.id.sort_group)).check(arrn[this.a]);
                for (int i2 = 0; i2 < 2; ++i2) {
                    final int finalI = i2;
                    ((RadioButton) view2.findViewById(arrn[i2])).setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            alertDialog.dismiss();
                            SettingsActivity.a(SettingsActivity.this, finalI, SettingsActivity.this.getResources().getString(arrn2[finalI]));
                        }
                    });
                }
                alertDialog.show();
                return;
            }
            case R.id.tv_disclaimer: {
                this.startActivity(new Intent(this, DisclaimerActivity.class));
                return;
            }
            case R.id.tv_feedback: {
                this.startActivity(CommonPostListActivity.a(this, "android-feedback"));
                return;
            }
            case R.id.settings_market_assessment: {
                am.a((Activity) this, (String) ("market://details?id=" + this.getPackageName()), (String) "\u6253\u5f00\u5e94\u7528\u5e02\u573a\u5931\u8d25");
                return;
            }
            case R.id.tv_jd:
        }
        am.a((Activity) this, (String) "http://www.lagou.com/gongsi/493.html?speedShow=true", (String) null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_setting);
        if (this.getIntent().getBooleanExtra("from_user_info", false)) {
            this.a(R.string.settings, "退出登录", new aa() {
                @Override
                public void a() {
                    SettingsActivity.a(SettingsActivity.this);
                }
            });
        } else {
            this.b(R.string.settings);
        }
        this.findViewById(R.id.settings_shelf_sort).setOnClickListener(this);
        this.findViewById(R.id.tv_disclaimer).setOnClickListener(this);
        this.findViewById(R.id.tv_feedback).setOnClickListener(this);
        this.findViewById(R.id.settings_market_assessment).setOnClickListener(this);
        TextView textView = (TextView) this.findViewById(R.id.settings_version_name);
        StringBuilder stringBuilder = new StringBuilder().append(am.g((Context) this)).append("(");
        String string = (String) am.c((Context) this, (String) "COMMIT_ID");
        String string2 = string != null && string.length() > 8 ? string.substring(0, 8) : null;
        textView.setText(stringBuilder.append(string2).append(")").toString());
        textView.setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                SettingsActivity.b(SettingsActivity.this);
                return true;
            }
        });
        final boolean bl = a.l(this, "update_notice_key");
        boolean bl2 = a.a((Context) this, "save_bandwidth", false);
        final SwitchCompat switchCompat = (SwitchCompat) this.findViewById(R.id.cb_notice_update);
        final SwitchCompat switchCompat2 = (SwitchCompat) this.findViewById(R.id.cb_save_bandwidth);
        switchCompat.setChecked(bl);
        SettingsActivity.a(switchCompat, bl);
        switchCompat2.setChecked(bl2);
        SettingsActivity.a(switchCompat2, bl2);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                com.clilystudio.netbook.hpay100.a.a.b(SettingsActivity.this, "update_notice_key", isChecked);
                SettingsActivity.a(SettingsActivity.this, isChecked);
                SettingsActivity.a(SettingsActivity.this, switchCompat, isChecked);
            }
        });
        switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                com.clilystudio.netbook.hpay100.a.a.b(SettingsActivity.this, "save_bandwidth", isChecked);
                SettingsActivity.a(SettingsActivity.this, switchCompat2, isChecked);
            }
        });
        if ("1".equals(OnlineConfigAgent.getInstance().getConfigParams(this, "enable_job"))) {
            View view = this.findViewById(R.id.tv_jd);
            view.setVisibility(View.VISIBLE);
            view.setOnClickListener(this);
            this.findViewById(R.id.jd_divider).setVisibility(View.VISIBLE);
        }
        this.a = a.a((Context) this, "key_shelf_sort", 1);
        String string3 = this.getResources().getStringArray(R.array.settings_shelf_sort)[this.a];
        ((TextView) this.findViewById(R.id.settings_shelf_sort_value)).setText(string3);
    }
}
