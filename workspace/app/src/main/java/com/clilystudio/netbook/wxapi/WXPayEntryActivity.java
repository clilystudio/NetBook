package com.clilystudio.netbook.wxapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.util.e;

public class WXPayEntryActivity extends Activity implements com.e.a.a.g.b {

    private com.e.a.a.g.a a;

    public final void a(com.e.a.a.d.b b1) {
        com.squareup.a.b b2 = i.a();
        boolean boolean3;

        if (b1.a == 0)
            boolean3 = true;
        else
            boolean3 = false;
        b2.c(new y(boolean3));
        switch (b1.a) {
            default:
                com.clilystudio.netbook.umeng.a.b.a((Context) this, "charge_money_failed", "weixinpay");
                e.a(this, "\u652F\u4ED8\u5931\u8D25\uFF01");
                break;
            case 0:
                e.a(this, "\u652F\u4ED8\u6210\u529F\uFF01");
                com.clilystudio.netbook.umeng.a.b.a((Context) this, "charge_complete", "weixinpay");
                break;
            case -1:
                com.clilystudio.netbook.umeng.a.b.a((Context) this, "charge_money_failed", "weixinpay");
                e.a(this, "\u7B7E\u540D\u9519\u8BEF\uFF01");
                break;
            case -2:
                com.clilystudio.netbook.umeng.a.b.a((Context) this, "charge_money_cancel", "weixinpay");
                e.a(this, "\u53D6\u6D88\u652F\u4ED8\uFF01");
                break;
        }
        finish();
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        a = com.e.a.a.g.c.a((Context) this, "wx1e7c2477db57dc75");
        a.a(getIntent(), this);
    }

    protected void onNewIntent(Intent Intent1) {
        super.onNewIntent(Intent1);
        setIntent(Intent1);
        a.a(Intent1, this);
    }
}
