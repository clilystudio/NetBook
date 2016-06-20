package com.clilystudio.netbook.ui.user;

import android.app.Activity;
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
import com.clilystudio.netbook.pay.b.a;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.widget.ScrollGridView;
import com.umeng.a.b;

public class ChargeActivity extends BaseLoadingActivity {
    private ChargeType a;
    private x b;
    private boolean c = false;
    private String e;
    private com.clilystudio.netbook.pay.a.a f;
    private com.clilystudio.netbook.pay.weixin.a g;
    private a h;

    public static Intent a(Context context, ChargeType chargeType) {
        return new d().a(context, ChargeActivity.class).a("key_pay_type", chargeType).a();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ChargeActivity chargeActivity) {
        if ("alipay".equals(chargeActivity.a.getType()) && chargeActivity.f == null) {
            chargeActivity.f = new com.clilystudio.netbook.pay.a.a(chargeActivity);
            return;
        } else {
            if ("weixinpay".equals(chargeActivity.a.getType()) && chargeActivity.g == null) {
                chargeActivity.g = new com.clilystudio.netbook.pay.weixin.a(chargeActivity);
                return;
            }
            if (!"youyifupay".equals(chargeActivity.a.getType()) || chargeActivity.h != null) return;
            {
                chargeActivity.h = new a(chargeActivity);
                return;
            }
        }
    }

    static /* synthetic */ x b(ChargeActivity chargeActivity) {
        return chargeActivity.b;
    }

    static /* synthetic */ String c(ChargeActivity chargeActivity) {
        return chargeActivity.e;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(ChargePlan chargePlan) {
        if (this.c) {
            return;
        }
        this.c = true;
        if ("alipay".equals(this.a.getType())) {
            if (this.f == null) {
                this.f = new com.clilystudio.netbook.pay.a.a(this);
            }
            this.f.a(chargePlan);
        } else if ("weixinpay".equals(this.a.getType())) {
            if (this.g == null) {
                this.g = new com.clilystudio.netbook.pay.weixin.a(this);
            }
            this.g.a(chargePlan);
        } else if ("youyifupay".equals(this.a.getType())) {
            if (this.h == null) {
                this.h = new a(this);
            }
            this.h.a(chargePlan);
        }
        b.a(this, "charge_money_click", chargePlan.getPriceDsc());
    }

    @Override
    protected final void b() {
        this.i();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.activity_pay_gridview);
        com.clilystudio.netbook.event.i.a().a(this);
        this.b = new x((Activity) this, LayoutInflater.from(this));
        ((ScrollGridView) this.findViewById(R.id.pay_grid_view)).setAdapter(this.b);
        this.a = (ChargeType) this.getIntent().getSerializableExtra("key_pay_type");
        if (this.a != null) {
            String string;
            String string2 = this.a.getType();
            if ("alipay".equals(string2)) {
                string = "\u652f\u4ed8\u5b9d";
            } else if ("weixinpay".equals(string2)) {
                string = "\u5fae\u4fe1\u652f\u4ed8";
            } else {
                boolean bl = "youyifupay".equals(string2);
                string = null;
                if (bl) {
                    string = "\u77ed\u4fe1\u652f\u4ed8";
                }
            }
            this.a(string, R.string.charge_help_title, (aa) ((Object) new g(this)));
            this.b.a(this.a.getPlan());
        } else {
            this.b();
        }
        TextView textView = (TextView) this.findViewById(R.id.charge_declare_desc1);
        TextView textView2 = (TextView) this.findViewById(R.id.charge_declare_desc2);
        TextView textView3 = (TextView) this.findViewById(R.id.charge_declare_desc3);
        View view = this.findViewById(R.id.charge_declare_desc3_row);
        if (this.a.getType().equals("youyifupay")) {
            String string = this.getString(R.string.charge_declare_desc1_msg);
            Object[] arrobject = new Object[]{50};
            textView.setText(String.format(string, arrobject));
            textView2.setText(R.string.charge_declare_desc2);
            textView3.setText(this.getString(R.string.charge_declare_desc3));
            return;
        }
        String string = this.getString(R.string.charge_declare_desc1);
        Object[] arrobject = new Object[]{100};
        textView.setText(String.format(string, arrobject));
        textView2.setText(this.getString(R.string.charge_declare_desc3));
        view.setVisibility(View.GONE);
    }

    @Override
    protected void onDestroy() {
        com.clilystudio.netbook.event.i.a().b(this);
        super.onDestroy();
    }

    /*
     * Enabled aggressive block sorting
     */
    @l
    public void onPayFinish(y y2) {
        this.c = false;
        if (y2.a()) {
            this.finish();
            return;
        } else {
            if (this.e == null) return;
            {
                new i(this, 0).b(new Void[0]);
                return;
            }
        }
    }

    @l
    public void onPayStart(z z2) {
        this.e = z2.a();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.c = false;
        new Handler().postDelayed((Runnable) ((Object) new h(this)), 1000);
    }
}
