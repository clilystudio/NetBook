package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.u;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.ui.aa;

import java.util.Date;

import butterknife.ButterKnife;

public class UserInfoActivity extends BaseActivity {

    TextView mExp;
    ProgressBar mExpProgress;
    TextView mLevel;
    TextView mMessageCount;
    TextView mName;
    CircularSmartImageView mPortrait;
    private View a;
    private View b;
    private String c;
    private Date e;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2) {
    }

    static Date a(UserInfoActivity UserInfoActivity1, Date Date2) {
        UserInfoActivity1.e = Date2;
        return Date2;
    }

    static void a(UserInfoActivity UserInfoActivity1) {
        if (UserInfoActivity1.e == null)
            UserInfoActivity1.e = new Date(0L);
        UserInfoActivity1.startActivity(ModifyUserInfoActivity.a((Context) UserInfoActivity1, UserInfoActivity1.e.getTime()));
    }

    static void a(UserInfoActivity UserInfoActivity1, int int2) {
        if (int2 > 0) {
            UserInfoActivity1.mMessageCount.setVisibility(0);
            UserInfoActivity1.mMessageCount.setText((CharSequence) String.valueOf(int2));
        } else
            UserInfoActivity1.mMessageCount.setVisibility(4);
    }

    static void a(UserInfoActivity UserInfoActivity1, UserInfo UserInfo2) {
        int int3 = UserInfo2.getLv();
        int int4 = UserInfo2.getExp();
        int int5 = com.clilystudio.netbook.util.e.a(int3);
        String String6 = UserInfo2.getScaleAvatar(2);

        UserInfoActivity1.mPortrait.setImageUrl(String6, 2130837614);
        UserInfoActivity1.mName.setText((CharSequence) UserInfo2.getNickname());
        UserInfoActivity1.mLevel.setText((CharSequence) new StringBuilder("Lv:").append(int3).toString());
        UserInfoActivity1.mExp.setText((CharSequence) new StringBuilder("\u7ECF\u9A8C\uFF1A").append(int4).append("/").append(int5).toString());
        UserInfoActivity1.mExpProgress.setProgress(int4 * 100 / int5);
    }

    static void b(UserInfoActivity UserInfoActivity1) {
        if (UserInfoActivity1.c != null)
            UserInfoActivity1.startActivity(PayAccountActivity.a((Context) UserInfoActivity1, UserInfoActivity1.c));
    }

    static void b(UserInfoActivity UserInfoActivity1, UserInfo UserInfo2) {
        Account Account3 = am.e();

        if (Account3 != null) {
            User User4 = Account3.getUser();

            User4.setNickname(UserInfo2.getNickname());
            User4.setAvatar(UserInfo2.getAvatar());
            User4.setLv(UserInfo2.getLv());
            try {
                MyApplication.a().a(Account3);
            } catch (Exception Exception5) {
            }
            i.a().c(new com.clilystudio.netbook.event.a());
        }
    }

    static void c(UserInfoActivity UserInfoActivity1) {
        UserInfoActivity1.a.setVisibility(8);
        UserInfoActivity1.b.setVisibility(0);
    }

    private void b() {
        if (c != null) {
            aK aK1 = new aK(this, (byte) 0);
            String[] String_1darray2 = new String[1];

            String_1darray2[0] = c;
            aK1.b(String_1darray2);
        } else
            com.clilystudio.netbook.util.e.a((Activity) this, "\u8D26\u53F7\u5F02\u5E38\uFF0C\u8BF7\u91CD\u65B0\u6388\u6743\u767B\u5F55\u540E\u518D\u8BD5");
    }

    public void onCreate(Bundle Bundle1) {
        View View2;

        super.onCreate(Bundle1);
        setContentView(2130903141);
        ButterKnife.inject((Activity) this);
        a(2131034578, "\u7F16\u8F91\u8D44\u6599", (aa) new aA(this));
        c = getIntent().getStringExtra("account_token");
        a = findViewById(2131493085);
        b = findViewById(2131493236);
        findViewById(2131493237).setOnClickListener((View$OnClickListener) new aC(this));
        findViewById(2131493241).setOnClickListener((View$OnClickListener) new aD(this));
        findViewById(2131493240).setOnClickListener((View$OnClickListener) new aE(this));
        findViewById(2131493242).setOnClickListener((View$OnClickListener) new aF(this));
        findViewById(2131493243).setOnClickListener((View$OnClickListener) new aG(this));
        findViewById(2131493244).setOnClickListener((View$OnClickListener) new aH(this));
        findViewById(2131493247).setOnClickListener((View$OnClickListener) new aI(this));
        findViewById(2131493246).setOnClickListener((View$OnClickListener) new aJ(this));
        View2 = findViewById(2131493245);
        if (com.clilystudio.netbook.hpay100.a.a.r((Context) this, "switch_share_remove_ad")) {
            View2.setVisibility(0);
            View2.setOnClickListener((View$OnClickListener) new aB(this));
        }
        b();
        i.a().a(this);
        com.umeng.a.b.a((Context) this, "PERSONAL_PAGE_SHOW");
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onLogoutEvent(u u1) {
        finish();
    }

    public void onUserInfoChanged(K K1) {
        b();
    }
}
