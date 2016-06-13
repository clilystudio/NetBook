package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayBalance;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class C
        extends c<String, PayBalance> {
    private /* synthetic */ o a;

    public C(o o2, Activity activity, String string) {
        this.a = o2;
        super(activity, string);
    }

    private static /* varargs */ PayBalance a(String... arrstring) {
        try {
            b.a();
            PayBalance payBalance = b.b().b(arrstring[0]);
            return payBalance;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        PayBalance payBalance = (PayBalance) object;
        if (payBalance != null && payBalance.isOk()) {
            a.b((Context) o.a((o) this.a), "user_account_balance", payBalance.getBalance() + payBalance.getVoucherBalance());
            o.b((o) this.a, (boolean) true);
            this.a.e();
            o.b((o) this.a, (boolean) false);
            return;
        }
        e.a((Activity) o.a((o) this.a), (String) "\u83b7\u53d6\u4f59\u989d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u8def\u540e\u91cd\u8bd5");
    }
}
