package com.clilystudio.netbook.ui;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.netbook.umeng.a_Pack.b;

public class SettingsActivity extends BaseActivity
        implements View.OnClickListener {
    private int a;

    private static void a(View paramView, boolean paramBoolean) {
        if (paramBoolean) {
            paramView.setContentDescription("已开启");
            return;
        }
        paramView.setContentDescription("已关闭");
    }

    public void onClick(View paramView) {
        int i = 0;
        switch (paramView.getId()) {
            case 2131493198:
            case 2131493199:
            case 2131493200:
            case 2131493201:
            case 2131493204:
            default:
                return;
            case 2131493197:
                h localh = new h(this);
                int[] arrayOfInt1 = {2131493985, 2131493986};
                int[] arrayOfInt2 = {2131034484, 2131034483};
                View localView = getLayoutInflater().inflate(2130903392, null, false);
                localh.d = "书架排序方式";
                AlertDialog localAlertDialog = localh.a(localView).b("取消", null).a();
                ((RadioGroup) localView.findViewById(2131493984)).check(arrayOfInt1[this.a]);
                while (i < 2) {
                    ((RadioButton) localView.findViewById(arrayOfInt1[i])).setOnClickListener(new bY(this, localAlertDialog, i, arrayOfInt2));
                    i++;
                }
                localAlertDialog.show();
                return;
            case 2131493202:
                startActivity(new Intent(this, DisclaimerActivity.class));
                return;
            case 2131493205:
                startActivity(CommonPostListActivity.a(this, "android-feedback"));
                return;
            case 2131493206:
                am.a(this, "market://details?id=" + getPackageName(), "打开应用市场失败");
                return;
            case 2131493203:
        }
        am.a(this, "http://www.lagou.com/gongsi/493.html?speedShow=true", null);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903129);
        TextView localTextView;
        StringBuilder localStringBuilder;
        String str1;
        if (getIntent().getBooleanExtra("from_user_info", false)) {
            a(2131034485, "退出登录", new bU(this));
            findViewById(2131493197).setOnClickListener(this);
            findViewById(2131493202).setOnClickListener(this);
            findViewById(2131493205).setOnClickListener(this);
            findViewById(2131493206).setOnClickListener(this);
            localTextView = (TextView) findViewById(2131493207);
            localStringBuilder = new StringBuilder().append(am.g(this)).append("(");
            str1 = (String) am.c(this, "COMMIT_ID");
            if ((str1 == null) || (str1.length() <= 8))
                break label390;
        }
        label390:
        for (String str2 = str1.substring(0, 8); ; str2 = null) {
            localTextView.setText(str2 + ")");
            localTextView.setOnLongClickListener(new bV(this));
            boolean bool1 = a.l(this, "update_notice_key");
            boolean bool2 = a.a(this, "save_bandwidth", false);
            SwitchCompat localSwitchCompat1 = (SwitchCompat) findViewById(2131493200);
            SwitchCompat localSwitchCompat2 = (SwitchCompat) findViewById(2131493201);
            localSwitchCompat1.setChecked(bool1);
            a(localSwitchCompat1, bool1);
            localSwitchCompat2.setChecked(bool2);
            a(localSwitchCompat2, bool2);
            localSwitchCompat1.setOnCheckedChangeListener(new bW(this, localSwitchCompat1));
            localSwitchCompat2.setOnCheckedChangeListener(new bX(this, localSwitchCompat2));
            if ("1".equals(b.b(this, "enable_job"))) {
                View localView = findViewById(2131493203);
                localView.setVisibility(0);
                localView.setOnClickListener(this);
                findViewById(2131493204).setVisibility(0);
            }
            this.a = a.a(this, "key_shelf_sort", 1);
            String str3 = getResources().getStringArray(2131361805)[this.a];
            ((TextView) findViewById(2131493198)).setText(str3);
            return;
            b(2131034485);
            break;
        }
    }
}

