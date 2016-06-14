package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.View;
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

public class SettingsActivity extends BaseActivity implements View.OnClickListener {
    private int a;

    private static void a(View view, boolean bl) {
        if (bl) {
            view.setContentDescription("\u5df2\u5f00\u542f");
            return;
        }
        view.setContentDescription("\u5df2\u5173\u95ed");
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity) {
        h h2 = new h(settingsActivity);
        h2.a(2131034580);
        h2.b(2131034581);
        h2.b(2131034129, null);
        h2.a(2131034579, (DialogInterface.OnClickListener) new bZ(settingsActivity));
        h2.a().show();
    }

    static /* synthetic */ void a(SettingsActivity settingsActivity, int n, String string) {
        if (settingsActivity.a != n) {
            settingsActivity.a = n;
            a.b((Context) settingsActivity, "key_shelf_sort", settingsActivity.a);
            ((TextView) settingsActivity.findViewById(2131493198)).setText(string);
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
        new Thread(new ca(settingsActivity, am.e().getToken())).start();
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
            case 2131493197: {
                h h2 = new h(this);
                int[] arrn = new int[]{2131493985, 2131493986};
                int[] arrn2 = new int[]{2131034484, 2131034483};
                View view2 = this.getLayoutInflater().inflate(2130903392, null, false);
                h2.d = "\u4e66\u67b6\u6392\u5e8f\u65b9\u5f0f";
                AlertDialog alertDialog = h2.a(view2).b("\u53d6\u6d88", null).a();
                ((RadioGroup) view2.findViewById(2131493984)).check(arrn[this.a]);
                for (int i2 = 0; i2 < 2; ++i2) {
                    ((RadioButton) view2.findViewById(arrn[i2])).setOnClickListener(new bY(this, alertDialog, i2, arrn2));
                }
                alertDialog.show();
                return;
            }
            case 2131493202: {
                this.startActivity(new Intent(this, DisclaimerActivity.class));
                return;
            }
            case 2131493205: {
                this.startActivity(CommonPostListActivity.a(this, "android-feedback"));
                return;
            }
            case 2131493206: {
                am.a((Activity) this, (String) ("market://details?id=" + this.getPackageName()), (String) "\u6253\u5f00\u5e94\u7528\u5e02\u573a\u5931\u8d25");
                return;
            }
            case 2131493203:
        }
        am.a((Activity) this, (String) "http://www.lagou.com/gongsi/493.html?speedShow=true", (String) null);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903129);
        if (this.getIntent().getBooleanExtra("from_user_info", false)) {
            this.a(2131034485, "\u9000\u51fa\u767b\u5f55", (aa) new bU(this));
        } else {
            this.b(2131034485);
        }
        this.findViewById(2131493197).setOnClickListener(this);
        this.findViewById(2131493202).setOnClickListener(this);
        this.findViewById(2131493205).setOnClickListener(this);
        this.findViewById(2131493206).setOnClickListener(this);
        TextView textView = (TextView) this.findViewById(2131493207);
        StringBuilder stringBuilder = new StringBuilder().append(am.g((Context) this)).append("(");
        String string = (String) am.c((Context) this, (String) "COMMIT_ID");
        String string2 = string != null && string.length() > 8 ? string.substring(0, 8) : null;
        textView.setText(stringBuilder.append(string2).append(")").toString());
        textView.setOnLongClickListener(new bV(this));
        boolean bl = a.l(this, "update_notice_key");
        boolean bl2 = a.a((Context) this, "save_bandwidth", false);
        SwitchCompat switchCompat = (SwitchCompat) this.findViewById(2131493200);
        SwitchCompat switchCompat2 = (SwitchCompat) this.findViewById(2131493201);
        switchCompat.setChecked(bl);
        SettingsActivity.a(switchCompat, bl);
        switchCompat2.setChecked(bl2);
        SettingsActivity.a(switchCompat2, bl2);
        switchCompat.setOnCheckedChangeListener(new bW(this, switchCompat));
        switchCompat2.setOnCheckedChangeListener(new bX(this, switchCompat2));
        if ("1".equals(b.b(this, "enable_job"))) {
            View view = this.findViewById(2131493203);
            view.setVisibility(0);
            view.setOnClickListener(this);
            this.findViewById(2131493204).setVisibility(0);
        }
        this.a = a.a((Context) this, "key_shelf_sort", 1);
        String string3 = this.getResources().getStringArray(2131361805)[this.a];
        ((TextView) this.findViewById(2131493198)).setText(string3);
    }
}
