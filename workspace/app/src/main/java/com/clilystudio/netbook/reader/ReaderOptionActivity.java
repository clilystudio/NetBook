package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.pm.ActivityInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ConvertChangedEvent;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.BookInfoUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.widget.SettingItem;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderOptionActivity extends BaseActivity {
    private int a = 0;
    private TextView b;
    private String[] c;
    private int[] e;

    static void a(final ReaderOptionActivity readerOptionActivity) {
        BaseDialog.Builder h2 = new BaseDialog.Builder(readerOptionActivity);
        int[] arrn = new int[]{R.id.time_2, R.id.time_5, R.id.time_10, R.id.time_0};
        View view = readerOptionActivity.getLayoutInflater().inflate(R.layout.screen_offtime_dialog, (ViewGroup) readerOptionActivity.getWindow().getDecorView(), false);
        final AlertDialog alertDialog = h2.setTitle(R.string.pref_dialog_title_screen_off_time).setView(view).setNegativeButton("取消", null).create();
        ((RadioGroup) view.findViewById(R.id.time_group)).check(arrn[readerOptionActivity.a]);
        for (int i = 0; i < 4; ++i) {
            final int finalI = i;
            view.findViewById(arrn[i]).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    alertDialog.dismiss();
                    if (readerOptionActivity.a != finalI) {
                        readerOptionActivity.a = finalI;
                        readerOptionActivity.b.setText(readerOptionActivity.c[finalI]);
                        CommonUtil.putIntPref(readerOptionActivity, "reader_screen_off_time", readerOptionActivity.e[finalI]);
                    }

                }
            });
        }
        alertDialog.show();
    }

    @Override
    public void onCreate(Bundle var1_1) {
        super.onCreate(var1_1);
        this.setContentView(R.layout.reader_option);
        this.b(R.string.reader_option_title);
        if (CommonUtil.getBoolPref(this, "reader_orientation", true)) {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        } else {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        }
        final SwitchCompat var2_2 = (SwitchCompat) this.findViewById(R.id.reader_option_cb_volume_flip);
        final SwitchCompat var3_3 = (SwitchCompat) this.findViewById(R.id.reader_option_cb_flip_animation);
        final SwitchCompat var4_4 = (SwitchCompat) this.findViewById(R.id.reader_option_full_screen);
        final SwitchCompat var5_5 = (SwitchCompat) this.findViewById(R.id.reader_option_convert);
        final SwitchCompat var6_6 = (SwitchCompat) this.findViewById(R.id.reader_option_auto_buy);
        View var7_7 = this.findViewById(R.id.reader_option_screen_off_time);
        this.b = (TextView) this.findViewById(R.id.reader_option_screen_off_time_value);
        this.c = this.getResources().getStringArray(R.array.reader_screen_off_time_tags);
        this.e = this.getResources().getIntArray(R.array.reader_screen_off_time_values);
        boolean var8_8 = CommonUtil.getBoolPref(this, "volume_keys_flip", true);
        boolean var9_9 = CommonUtil.getBoolPref(this, "click_flip_animation", false);
        boolean var10_10 = CommonUtil.getBoolPref(this, "reader_opt_full_screen", true);
        boolean var11_11 = CommonUtil.getBoolPref(this, "convert_t", false);
        boolean var12_12 = CommonUtil.getBoolPref(this, "auto_buy_chapter" + BookInfoUtil.bookId, false);
        assert var2_2 != null;
        var2_2.setChecked(var8_8);
        assert var3_3 != null;
        var3_3.setChecked(var9_9);
        assert var4_4 != null;
        var4_4.setChecked(var10_10);
        assert var5_5 != null;
        var5_5.setChecked(var11_11);
        assert var6_6 != null;
        var6_6.setChecked(var12_12);
        int var13_13 = CommonUtil.getIntPref(this, "reader_screen_off_time", 120000);
        for (int var14_14 = 0; var14_14 < this.c.length; var14_14++) {
            if (var13_13 == this.e[var14_14]) {
                this.a = var14_14;
                this.b.setText(this.c[var14_14]);
                var2_2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        var2_2.setContentDescription(isChecked ? "已开启" : "已关闭");
                    }
                });
                var3_3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        var3_3.setContentDescription(isChecked ? "已开启" : "已关闭");
                    }
                });
                var4_4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        var4_4.setContentDescription(isChecked ? "已开启" : "已关闭");
                    }
                });
                var5_5.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        BusProvider.getInstance().post(new ConvertChangedEvent());
                        var5_5.setContentDescription(isChecked ? "已开启" : "已关闭");
                    }
                });
                assert var7_7 != null;
                var7_7.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        ReaderOptionActivity.a(ReaderOptionActivity.this);
                    }
                });
                var6_6.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        var6_6.setContentDescription(isChecked ? "已开启" : "已关闭");
                    }
                });
                SettingItem var15_15 = (SettingItem) this.findViewById(R.id.immersive_container);
                boolean hasPermanentMenuKey = "xiaomi".equals(Build.BRAND.toLowerCase()) || !(Build.VERSION.SDK_INT >= 19 && !ViewConfiguration.get(this).hasPermanentMenuKey());
                if (hasPermanentMenuKey) {
                    assert var15_15 != null;
                    var15_15.setVisibility(View.GONE);
                    View viewById = this.findViewById(R.id.immersive_divider);
                    assert viewById != null;
                    viewById.setVisibility(View.GONE);
                } else {
                    assert var15_15 != null;
                    var15_15.setChecked(CommonUtil.getBoolPref(this, "key_enable_imersive_mode", false));
                    var15_15.setCheckListener(new CompoundButton.OnCheckedChangeListener() {
                        @Override
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                            CommonUtil.putBoolPref(ReaderOptionActivity.this, "key_enable_imersive_mode", isChecked);
                        }
                    });
                }
                return;
            }
        }
    }
}
