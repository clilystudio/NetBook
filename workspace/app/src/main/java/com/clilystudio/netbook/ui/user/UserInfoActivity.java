package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.u;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.ui.aa;
import com.umeng.a.b;

import java.util.Date;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class UserInfoActivity extends BaseActivity {
    @InjectView(value = 2131493234)
    TextView mExp;
    @InjectView(value = 2131493235)
    ProgressBar mExpProgress;
    @InjectView(value = 2131493233)
    TextView mLevel;
    @InjectView(value = 2131493239)
    TextView mMessageCount;
    @InjectView(value = 2131492928)
    TextView mName;
    @InjectView(value = 2131493146)
    CircularSmartImageView mPortrait;
    private View a;
    private View b;
    private String c;
    private Date e;

    public static Intent a(Context context, String string) {
        return new d().a(context, UserInfoActivity.class).a("account_token", string).a();
    }

    static /* synthetic */ Date a(UserInfoActivity userInfoActivity, Date date) {
        userInfoActivity.e = date;
        return date;
    }

    static /* synthetic */ void a(UserInfoActivity userInfoActivity) {
        if (userInfoActivity.e == null) {
            userInfoActivity.e = new Date(0);
        }
        userInfoActivity.startActivity(ModifyUserInfoActivity.a(userInfoActivity, userInfoActivity.e.getTime()));
    }

    static /* synthetic */ void a(UserInfoActivity userInfoActivity, int n) {
        if (n > 0) {
            userInfoActivity.mMessageCount.setVisibility(View.VISIBLE);
            userInfoActivity.mMessageCount.setText(String.valueOf(n));
            return;
        }
        userInfoActivity.mMessageCount.setVisibility(4);
    }

    static /* synthetic */ void a(UserInfoActivity userInfoActivity, UserInfo userInfo) {
        int n = userInfo.getLv();
        int n2 = userInfo.getExp();
        int n3 = e.a((int) n);
        String string = userInfo.getScaleAvatar(2);
        userInfoActivity.mPortrait.setImageUrl(string, 2130837614);
        userInfoActivity.mName.setText(userInfo.getNickname());
        userInfoActivity.mLevel.setText("Lv:" + n);
        userInfoActivity.mExp.setText("\u7ecf\u9a8c\uff1a" + n2 + "/" + n3);
        userInfoActivity.mExpProgress.setProgress(n2 * 100 / n3);
    }

    static /* synthetic */ void b(UserInfoActivity userInfoActivity) {
        if (userInfoActivity.c != null) {
            userInfoActivity.startActivity(PayAccountActivity.a(userInfoActivity, userInfoActivity.c));
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static /* synthetic */ void b(UserInfoActivity userInfoActivity, UserInfo userInfo) {
        Account account = am.e();
        if (account != null) {
            User user = account.getUser();
            user.setNickname(userInfo.getNickname());
            user.setAvatar(userInfo.getAvatar());
            user.setLv(userInfo.getLv());
            try {
                MyApplication.a().a(account);
            } catch (Exception var4_4) {
            }
            i.a().c(new com.clilystudio.netbook.event.a());
        }
    }

    static /* synthetic */ void c(UserInfoActivity userInfoActivity) {
        userInfoActivity.a.setVisibility(View.GONE);
        userInfoActivity.b.setVisibility(View.VISIBLE);
    }

    private void b() {
        if (this.c != null) {
            aK aK2 = new aK(this, 0);
            String[] arrstring = new String[]{this.c};
            aK2.b(arrstring);
            return;
        }
        e.a((Activity) this, (String) "\u8d26\u53f7\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u6388\u6743\u767b\u5f55\u540e\u518d\u8bd5");
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903141);
        ButterKnife.inject(this);
        this.a(2131034578, "\u7f16\u8f91\u8d44\u6599", (aa) new aA(this));
        this.c = this.getIntent().getStringExtra("account_token");
        this.a = this.findViewById(2131493085);
        this.b = this.findViewById(2131493236);
        this.findViewById(2131493237).setOnClickListener(new aC(this));
        this.findViewById(2131493241).setOnClickListener(new aD(this));
        this.findViewById(2131493240).setOnClickListener(new aE(this));
        this.findViewById(2131493242).setOnClickListener(new aF(this));
        this.findViewById(2131493243).setOnClickListener(new aG(this));
        this.findViewById(2131493244).setOnClickListener(new aH(this));
        this.findViewById(2131493247).setOnClickListener(new aI(this));
        this.findViewById(2131493246).setOnClickListener(new aJ(this));
        View view = this.findViewById(2131493245);
        if (a.r(this, "switch_share_remove_ad")) {
            view.setVisibility(View.VISIBLE);
            view.setOnClickListener(new aB(this));
        }
        this.b();
        i.a().a(this);
        b.a(this, "PERSONAL_PAGE_SHOW");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onLogoutEvent(u u2) {
        this.finish();
    }

    @l
    public void onUserInfoChanged(K k) {
        this.b();
    }
}
