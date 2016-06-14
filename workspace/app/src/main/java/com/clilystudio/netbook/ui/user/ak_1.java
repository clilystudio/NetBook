package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.PurchaseVipResult;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.util.p;

import java.io.IOException;

final class ak extends c<String, PurchaseVipResult> {
    private /* synthetic */ RemoveAdActivity a;

    public ak(RemoveAdActivity removeAdActivity, Activity activity, String string) {
        this.a = removeAdActivity;
        super(activity, string);
    }

    private /* varargs */ PurchaseVipResult a(String... arrstring) {
        try {
            PurchaseVipResult purchaseVipResult = b.b().t(arrstring[0], arrstring[1]);
            return purchaseVipResult;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        PurchaseVipResult purchaseVipResult = (PurchaseVipResult) object;
        if (purchaseVipResult != null && purchaseVipResult.isOk()) {
            e.a((Activity) this.a, "\u8d2d\u4e70\u6210\u529f");
            a.b((Context) this.a, "remove_ad_duration", purchaseVipResult.getDueInMs());
            if (purchaseVipResult.getDueInMs() > 0) {
                i.a().c(new s(purchaseVipResult.getVipExpire()));
            }
            return;
        }
        if (purchaseVipResult.getCode().equals("BALANCE_NOT_ENOUGH")) {
            e.a((Activity) this.a, "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c");
            new p(this.a).a();
            return;
        }
        e.a((Activity) this.a, "\u672a\u8d2d\u4e70\u6210\u529f\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5");
    }
}
