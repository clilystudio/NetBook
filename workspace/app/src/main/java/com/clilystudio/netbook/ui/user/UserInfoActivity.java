package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.u;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;

import java.util.Date;

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

    public static Intent a(Context paramContext, String paramString) {
        return new d().a(paramContext, UserInfoActivity.class).a("account_token", paramString).a();
    }

    private void b() {
        if (this.c != null) {
            aK localaK = new aK(this, 0);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = this.c;
            localaK.b(arrayOfString);
            return;
        }
        e.a(this, "账号异常，请重新授权登录后再试");
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(R.layout.activity_user_info);
        mExp = (TextView) findViewById(R.id.exp);
        mExpProgress = (ProgressBar) findViewById(R.id.exp_pregress);
        mLevel = (TextView) findViewById(R.id.level);
        mMessageCount = (TextView) findViewById(R.id.message_count);
        mName = (TextView) findViewById(R.id.name);
        mPortrait = (CircularSmartImageView) findViewById(R.id.portrait);
        a(2131034578, "编辑资料", new aA(this));
        this.c = getIntent().getStringExtra("account_token");
        this.a = findViewById(2131493085);
        this.b = findViewById(2131493236);
        findViewById(2131493237).setOnClickListener(new aC(this));
        findViewById(2131493241).setOnClickListener(new aD(this));
        findViewById(2131493240).setOnClickListener(new aE(this));
        findViewById(2131493242).setOnClickListener(new aF(this));
        findViewById(2131493243).setOnClickListener(new aG(this));
        findViewById(2131493244).setOnClickListener(new aH(this));
        findViewById(2131493247).setOnClickListener(new aI(this));
        findViewById(2131493246).setOnClickListener(new aJ(this));
        View localView = findViewById(2131493245);
        if (a.r(this, "switch_share_remove_ad")) {
            localView.setVisibility(0);
            localView.setOnClickListener(new aB(this));
        }
        b();
        i.a().a(this);
        com.umeng.a.b.a(this, "PERSONAL_PAGE_SHOW");
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onLogoutEvent(u paramu) {
        finish();
    }

    @l
    public void onUserInfoChanged(K paramK) {
        b();
    }
}

