package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.p;
import com.clilystudio.netbook.widget.PaySectionItem;

import java.text.SimpleDateFormat;
import java.util.Locale;

public class PayAccountActivity extends BaseActivity
        implements View.OnClickListener {
    private String a;
    private PaySectionItem b;
    private PaySectionItem c;
    private String e;
    private TextView f;

    public static Intent a(Context paramContext, String paramString) {
        return new d().a(paramContext, PayAccountActivity.class).a("key_token", paramString).a();
    }

    public void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
                return;
            case 2131493803:
                startActivity(PayVoucherActivity.a(this, getIntent().getStringExtra("key_token")));
                return;
            case 2131493804:
                startActivity(PayChargeActivity.a(this, getIntent().getStringExtra("key_token"), "充值记录"));
                return;
            case 2131493805:
                startActivity(PayConsumeActivity.a(this, getIntent().getStringExtra("key_token"), "消费记录"));
                return;
            case 2131493807:
                com.umeng.a.b.a(this, "user_remove_ad_click");
                startActivity(new Intent(this, RemoveAdActivity.class));
                return;
            case 2131493199:
        }
        new p(this).a();
        com.umeng.a.b.a(this, "charge_click_count");
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        i.a().a(this);
        setContentView(2130903329);
        b("我的账户");
        this.b = ((PaySectionItem) findViewById(2131493802));
        this.c = ((PaySectionItem) findViewById(2131493803));
        PaySectionItem localPaySectionItem1 = (PaySectionItem) findViewById(2131493804);
        PaySectionItem localPaySectionItem2 = (PaySectionItem) findViewById(2131493805);
        PaySectionItem localPaySectionItem3 = (PaySectionItem) findViewById(2131493807);
        TextView localTextView = (TextView) findViewById(2131493806);
        if (a.y(this)) {
            localTextView.setVisibility(0);
            localPaySectionItem3.setVisibility(0);
        }
        this.b.setBalanceDefault();
        this.c.setBalanceDefault();
        this.b.b().setOnClickListener(this);
        this.c.setOnClickListener(this);
        localPaySectionItem1.setOnClickListener(this);
        localPaySectionItem2.setOnClickListener(this);
        localPaySectionItem3.setOnClickListener(this);
        this.f = ((TextView) localPaySectionItem3.findViewById(2131493481));
        this.a = getIntent().getStringExtra("key_token");
        I localI = new I(this, this);
        String[] arrayOfString1 = new String[1];
        arrayOfString1[0] = this.a;
        localI.b(arrayOfString1);
        J localJ = new J(this);
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = this.a;
        localJ.b(arrayOfString2);
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onHideAdEvent(s params) {
        if ((this.f != null) && (params.a() != null)) {
            SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
            this.f.setText("截止至" + localSimpleDateFormat.format(params.a()));
            this.f.setVisibility(0);
        }
    }

    @l
    public void onPayFinish(y paramy) {
        if (paramy.a()) {
            H localH = new H(this, this, "正在查询支付结果...");
            String[] arrayOfString = new String[1];
            arrayOfString[0] = this.e;
            localH.b(arrayOfString);
        }
    }

    @l
    public void onPayStart(z paramz) {
        this.e = paramz.a();
    }
}

