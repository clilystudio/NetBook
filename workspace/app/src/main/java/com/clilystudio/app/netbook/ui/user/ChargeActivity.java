package com.clilystudio.app.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.app.netbook.adapter.x;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.event.y;
import com.clilystudio.app.netbook.event.z;
import com.clilystudio.app.netbook.model.ChargePlan;
import com.clilystudio.app.netbook.model.ChargeType;
import com.clilystudio.app.netbook.ui.BaseLoadingActivity;
import com.clilystudio.app.netbook.widget.ScrollGridView;

public class ChargeActivity extends BaseLoadingActivity {
    private ChargeType a;
    private x b;
    private boolean c = false;
    private String e;
    private com.clilystudio.app.netbook.pay.a.a f;
    private com.clilystudio.app.netbook.pay.weixin.a g;
    private com.clilystudio.app.netbook.pay.b.a h;

    public static Intent a(Context paramContext, ChargeType paramChargeType) {
        return new d_IntentFactory().a_setClass(paramContext, ChargeActivity.class).a_putExtra("key_pay_type", paramChargeType).a();
    }

    public final void a(ChargePlan paramChargePlan) {
        if (this.c)
            return;
        this.c = true;
        if ("alipay".equals(this.a.getType())) {
            if (this.f == null)
                this.f = new com.clilystudio.app.netbook.pay.a.a(this);
            this.f.a(paramChargePlan);
        }
        while (true) {
            AppProperties.getInstance(this).setProperties("charge_money_click", paramChargePlan.getPriceDsc());
            return;
            if ("weixinpay".equals(this.a.getType())) {
                if (this.g == null)
                    this.g = new com.clilystudio.app.netbook.pay.weixin.a(this);
                this.g.a(paramChargePlan);
            } else if ("youyifupay".equals(this.a.getType())) {
                if (this.h == null)
                    this.h = new com.clilystudio.app.netbook.pay.b.a(this);
                this.h.a(paramChargePlan);
            }
        }
    }

    protected final void b() {
        i();
        new j(this, (byte) 0).b(new Void[0]);
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        a(2130903118);
        com.clilystudio.app.netbook.event.i.a().a(this);
        this.b = new x(this, LayoutInflater.from(this));
        ((ScrollGridView) findViewById(2131493151)).setAdapter(this.b);
        this.a = ((ChargeType) getIntent().getSerializableExtra("key_pay_type"));
        String str3;
        String str4;
        if (this.a != null) {
            str3 = this.a.getType();
            if ("alipay".equals(str3)) {
                str4 = "支付宝";
                a_initContentView(str4, 2131034362, new g(this));
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
        com.clilystudio.app.netbook.event.i.a().b(this);
        super.onDestroy();
    }

    @l
    public void onPayFinish(y paramy) {
        this.c = false;
        if (paramy.a())
            finish();
        while (this.e == null)
            return;
        new i(this, (byte) 0).b(new Void[0]);
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ChargeActivity
 * JD-Core Version:    0.6.2
 */