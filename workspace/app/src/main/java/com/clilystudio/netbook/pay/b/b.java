package com.clilystudio.netbook.pay.b;

import android.widget.Toast;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.hpay100.y;
import com.clilystudio.netbook.hpay100.z;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

class b implements y {
    final /* synthetic */ a a;

    private b(a a2) {
        this.a = a2;
    }

    /* synthetic */ b(a a2, byte by) {
        this(a2);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(z z2) {
        com.squareup.a.b b2 = i.a();
        boolean bl = z2.a() == 1;
        b2.c(new com.clilystudio.netbook.event.y(bl));
        switch (z2.a()) {
            case 1: {
                Toast.makeText(a.a(this.a), "\u8ba2\u5355\u63d0\u4ea4\u6210\u529f", 1).show();
                MiStatInterface.recordCountEvent("charge_complete", "youyifupay");
                return;
            }
            case 2: {
                if (!z2.b()) {
                    MiStatInterface.recordCountEvent("charge_money_failed", "youyifupay");
                    Toast.makeText(a.a(this.a), "\u975e\u5e38\u62b1\u6b49\uff0c\u60a8\u7684\u624b\u673a\u53f7\u6240\u5728\u5730\u533a\u6682\u4e0d\u652f\u6301\u8bdd\u8d39\u5145\u503c\uff0c\u8bf7\u60a8\u9009\u62e9\u5176\u4ed6\u5145\u503c\u65b9\u5f0f\uff01", 1).show();
                    return;
                }
            }
            default: {
                return;
            }
            case 3:
        }
        MiStatInterface.recordCountEvent("charge_money_cancel", "youyifupay");
        Toast.makeText(a.a(this.a), "\u652f\u4ed8\u53d6\u6d88", 1).show();
    }
}
