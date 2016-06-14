package com.clilystudio.netbook.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.y;
import com.clilystudio.netbook.util.e;
import com.e.a.a.d.b;
import com.e.a.a.g.a;
import com.e.a.a.g.c;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class WXPayEntryActivity extends Activity
        implements com.e.a.a.g.b {
    private a a;

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a(b b2) {
        com.squareup.a.b b3 = i.a();
        boolean bl = b2.a == 0;
        b3.c(new y(bl));
        switch (b2.a) {
            default: {
                MiStatInterface.recordCountEvent( "charge_money_failed", "weixinpay");
                e.a((Activity) this, (String) "\u652f\u4ed8\u5931\u8d25\uff01");
                break;
            }
            case 0: {
                e.a((Activity) this, (String) "\u652f\u4ed8\u6210\u529f\uff01");
                MiStatInterface.recordCountEvent("charge_complete", "weixinpay");
                break;
            }
            case -1: {
                MiStatInterface.recordCountEvent("charge_money_failed", "weixinpay");
                e.a((Activity) this, (String) "\u7b7e\u540d\u9519\u8bef\uff01");
                break;
            }
            case -2: {
                MiStatInterface.recordCountEvent("charge_money_cancel", "weixinpay");
                e.a((Activity) this, (String) "\u53d6\u6d88\u652f\u4ed8\uff01");
            }
        }
        this.finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = c.a(this, "wx1e7c2477db57dc75");
        this.a.a(this.getIntent(), this);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.setIntent(intent);
        this.a.a(intent, this);
    }
}
