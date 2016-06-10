package com.clilystudio.netbook.pay.b;

import android.widget.Toast;

import com.clilystudio.netbook.hpay100.z;
import com.clilystudio.netbook.event.i;

class b
        implements com.clilystudio.netbook.hpay100.y {
    private b(a parama) {
    }

    public void a(z paramz) {
        com.squareup.a.b localb = i.a();
        boolean bool;
        if (paramz.a() == 1) {
            bool = true;
            localb.c(new com.clilystudio.netbook.event.y(bool));
        }
        switch (paramz.a()) {
            default:
            case 1:
            case 2:
                do {
                    return;
                    bool = false;
                    break;
                    Toast.makeText(a.a(this.a), "订单提交成功", 1).show();
                    com.clilystudio.netbook.umeng.a_Pack.b.a(a.a(this.a), "charge_complete", "youyifupay");
                    return;
                }
                while (paramz.b());
                com.clilystudio.netbook.umeng.a_Pack.b.a(a.a(this.a), "charge_money_failed", "youyifupay");
                Toast.makeText(a.a(this.a), "非常抱歉，您的手机号所在地区暂不支持话费充值，请您选择其他充值方式！", 1).show();
                return;
            case 3:
        }
        com.clilystudio.netbook.umeng.a_Pack.b.a(a.a(this.a), "charge_money_cancel", "youyifupay");
        Toast.makeText(a.a(this.a), "支付取消", 1).show();
    }
}

