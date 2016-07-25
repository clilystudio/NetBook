package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.BookReadEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.util.CommonUtil;
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
                            if (SettingsActivity.this.a != finalI) {
                                SettingsActivity.this.a = finalI;
                                CommonUtil.putIntPref(SettingsActivity.this, "key_shelf_sort", SettingsActivity.this.a);
                                ((TextView) SettingsActivity.this.findViewById(R.id.settings_shelf_sort_value)).setText( SettingsActivity.this.getResources().getString(arrn2[finalI]));
                                BusProvider.getInstance().post(new BookReadEvent());
                            }
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
        } else {
            this.b(R.string.settings);
        }
        this.findViewById(R.id.settings_shelf_sort).setOnClickListener(this);
        this.findViewById(R.id.tv_disclaimer).setOnClickListener(this);
        this.findViewById(R.id.tv_feedback).setOnClickListener(this);
        this.findViewById(R.id.settings_market_assessment).setOnClickListener(this);
        TextView textView = (TextView) this.findViewById(R.id.settings_version_name);
        textView.setText(CommonUtil.getVersionName(this));
        final boolean bl = CommonUtil.getBoolPref(this, "update_notice_key",true);
        boolean bl2 = CommonUtil.getBoolPref(this, "save_bandwidth", false);
        final SwitchCompat switchCompat = (SwitchCompat) this.findViewById(R.id.cb_notice_update);
        final SwitchCompat switchCompat2 = (SwitchCompat) this.findViewById(R.id.cb_save_bandwidth);
        switchCompat.setChecked(bl);
        SettingsActivity.a(switchCompat, bl);
        switchCompat2.setChecked(bl2);
        SettingsActivity.a(switchCompat2, bl2);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                CommonUtil.putBoolPref(SettingsActivity.this, "update_notice_key", isChecked);
                if (isChecked) {
                    MiPushClient.registerPush(SettingsActivity.this.getApplicationContext(), "2882303761517133731", "5941713373731");
                } else {
                    MiPushClient.unregisterPush(SettingsActivity.this.getApplicationContext());
                }
                SettingsActivity.a(switchCompat, isChecked);
            }
        });
        switchCompat2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                CommonUtil.putBoolPref(SettingsActivity.this, "save_bandwidth", isChecked);
                SettingsActivity.a(switchCompat2, isChecked);
            }
        });
        this.a = CommonUtil.getIntPref(this, "key_shelf_sort", 1);
        String string3 = this.getResources().getStringArray(R.array.settings_shelf_sort)[this.a];
        ((TextView) this.findViewById(R.id.settings_shelf_sort_value)).setText(string3);
    }
}
