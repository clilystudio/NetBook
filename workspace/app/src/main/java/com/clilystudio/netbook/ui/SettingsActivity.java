package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BookReadEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.LogoutEvent;
import com.clilystudio.netbook.util.ToastUtil;
import com.xiaomi.mipush.sdk.MiPushClient;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class SettingsActivity extends BaseActivity implements View.OnClickListener {
    private int a;

    private static void a(View view, boolean bl) {
        if (bl) {
            view.setContentDescription("已开启");
            return;
        }
        view.setContentDescription("已关闭");
    }

    static /* synthetic */ void a(final SettingsActivity settingsActivity) {
        BaseDialog.Builder h2 = new BaseDialog.Builder(settingsActivity);
        h2.setTitle(R.string.user_logout_dialog);
        h2.setMessage(R.string.user_logout_dialog_tips);
        h2.setNegativeButton(R.string.cancel, null);
        h2.setPositiveButton(R.string.user_logout, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                SettingsActivity.c(settingsActivity);
            }
        });
        h2.create().show();
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity, int n, String string) {
        if (settingsActivity.a != n) {
            settingsActivity.a = n;
            com.clilystudio.netbook.hpay100.a.a.b(settingsActivity, "key_shelf_sort", settingsActivity.a);
            ((TextView) settingsActivity.findViewById(R.id.settings_shelf_sort_value)).setText(string);
            BusProvider.getInstance().post(new BookReadEvent());
        }
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity, boolean bl) {
        if (bl) {
            MiPushClient.registerPush(settingsActivity.getApplicationContext(), "2882303761517133731", "5941713373731");
        } else {
            MiPushClient.unregisterPush(settingsActivity.getApplicationContext());
        }
    }

    static /* synthetic */ void c(SettingsActivity settingsActivity) {
        ToastUtil.showShortToast(settingsActivity, "已登出");
        new Thread(new Runnable() {
            @Override
            public void run() {
                ApiServiceProvider.getApiService().P(am.getAccount().getToken());
            }
        }).start();
        MyApplication.getInstance().removeProperties("account.token", "user.id", "user.name", "user.avatar", "user.lv", "user.gender");
        com.clilystudio.netbook.hpay100.a.a.e(settingsActivity, "pref_new_unimp_notif_time", "0");
        com.clilystudio.netbook.hpay100.a.a.e(settingsActivity, "pref_new_imp_notif_time", "0");
        com.clilystudio.netbook.hpay100.a.a.b(settingsActivity, "remove_ad_duration", 0);
        settingsActivity.finish();
        BusProvider.getInstance().post(new LogoutEvent());
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.settings_shelf_sort:
                BaseDialog.Builder h2 = new BaseDialog.Builder(this);
                int[] arrn = new int[]{R.id.sort_by_time, R.id.sort_by_read};
                final int[] arrn2 = new int[]{R.string.setting_sort_time, R.string.setting_sort_read};
                View view2 = this.getLayoutInflater().inflate(R.layout.setting_shelf_sort, (ViewGroup) getWindow().getDecorView(), false);
                h2.setTitle("书架排序方式");
                final AlertDialog alertDialog = h2.setView(view2).setNegativeButton("取消", null).create();
                ((RadioGroup) view2.findViewById(R.id.sort_group)).check(arrn[this.a]);
                for (int i2 = 0; i2 < 2; ++i2) {
                    final int finalI = i2;
                    view2.findViewById(arrn[i2]).setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            alertDialog.dismiss();
                            SettingsActivity.a(SettingsActivity.this, finalI, SettingsActivity.this.getResources().getString(arrn2[finalI]));
                        }
                    });
                }
                alertDialog.show();
                break;
            case R.id.tv_disclaimer:
                this.startActivity(new Intent(this, DisclaimerActivity.class));
                break;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_setting);
        if (this.getIntent().getBooleanExtra("from_user_info", false)) {
            this.a(R.string.settings, "退出登录", new BaseCallBack() {
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
        StringBuilder stringBuilder = new StringBuilder().append(am.g(this)).append("(");
        String string = am.c(this, "COMMIT_ID");
        String string2 = string != null && string.length() > 8 ? string.substring(0, 8) : null;
        textView.setText(stringBuilder.append(string2).append(")").toString());
        final boolean bl = com.clilystudio.netbook.hpay100.a.a.l(this, "update_notice_key");
        boolean bl2 = com.clilystudio.netbook.hpay100.a.a.a(this, "save_bandwidth", false);
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
                SettingsActivity.a(switchCompat, isChecked);
            }
        });
        switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                com.clilystudio.netbook.hpay100.a.a.b(SettingsActivity.this, "save_bandwidth", isChecked);
                SettingsActivity.a(switchCompat2, isChecked);
            }
        });
        this.a = com.clilystudio.netbook.hpay100.a.a.a(this, "key_shelf_sort", 1);
        String string3 = this.getResources().getStringArray(R.array.settings_shelf_sort)[this.a];
        ((TextView) this.findViewById(R.id.settings_shelf_sort_value)).setText(string3);
    }
}
