package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.adapter.x;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.event.z;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.model.ChargeType;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.widget.ScrollGridView;

public class ChargeActivity extends BaseLoadingActivity {
    private ChargeType a;
    private x b;
    private boolean c = false;
    private String e;
    private com.clilystudio.netbook.pay.a.a f;
    private com.clilystudio.netbook.pay.weixin.a g;
    private com.clilystudio.netbook.pay.b.a h;

    public static Intent a(Context paramContext, ChargeType paramChargeType) {
        return new d().a(paramContext, ChargeActivity.class).a("key_pay_type", paramChargeType).a();
    }

    public final void a(ChargePlan paramChargePlan) {
        if (this.c)
            return;
        this.c = true;
        if ("alipay".equals(this.a.getType())) {
            if (this.f == null)
                this.f = new com.clilystudio.netbook.pay.a.a(this);
            this.f.a(paramChargePlan);
        }
        while (true) {
            com.umeng.a.b.a(this, "charge_money_click", paramChargePlan.getPriceDsc());
            return;
            if ("weixinpay".equals(this.a.getType())) {
                if (this.g == null)
                    this.g = new com.clilystudio.netbook.pay.weixin.a(this);
                this.g.a(paramChargePlan);
                continue;
            }
            if (!"youyifupay".equals(this.a.getType()))
                continue;
            if (this.h == null)
                this.h = new com.clilystudio.netbook.pay.b.a(this);
            this.h.a(paramChargePlan);
        }
    }

    protected final void b() {
        i();
        new j(this, 0).b(new Void[0]);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        a(2130903118);
        com.clilystudio.netbook.event.i.a().a(this);
        this.b = new x(this, LayoutInflater.from(this));
        ((ScrollGridView) findViewById(2131493151)).setAdapter(this.b);
        this.a = ((ChargeType) getIntent().getSerializableExtra("key_pay_type"));
        String str3;
        String str4;
        if (this.a != null) {
            str3 = this.a.getType();
            if ("alipay".equals(str3)) {
                str4 = "支付宝";
                a(str4, 2131034362, new g(this));
                this.b.a(this.a.getPlan());
            }
        }
        TextView localTextView1;
        TextView localTextView2;
        View localView;
        while (true) {
            localTextView1 = (TextView) findViewById(2131493152);
            localTextView2 = (TextView) findViewById(2131493153);
            TextView localTextView3 = (TextView) findViewById(2131493155);
            localView = findViewById(2131493154);
            if (!this.a.getType().equals("youyifupay"))
                break label280;
            String str2 = getString(2131034346);
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(50);
            localTextView1.setText(String.format(str2, arrayOfObject2));
            localTextView2.setText(2131034347);
            localTextView3.setText(getString(2131034348));
            return;
            if ("weixinpay".equals(str3)) {
                str4 = "微信支付";
                break;
            }
            boolean bool = "youyifupay".equals(str3);
            str4 = null;
            if (!bool)
                break;
            str4 = "短信支付";
            break;
            b();
        }
        label280:
        String str1 = getString(2131034345);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(100);
        localTextView1.setText(String.format(str1, arrayOfObject1));
        localTextView2.setText(getString(2131034348));
        localView.setVisibility(8);
    }

    protected void onDestroy() {
        com.clilystudio.netbook.event.i.a().b(this);
        super.onDestroy();
    }

    @l
    public void onPayFinish(y paramy) {
        this.c = false;
        if (paramy.a())
            finish();
        do
            return;
        while (this.e == null);
        new i(this, 0).b(new Void[0]);
    }

    @l
    public void onPayStart(z paramz) {
        this.e = paramz.a();
    }

    public void onResume() {
        super.onResume();
        this.c = false;
        new Handler().postDelayed(new h(this), 1000L);
    }
}
