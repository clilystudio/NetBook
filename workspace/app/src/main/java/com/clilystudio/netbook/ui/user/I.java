package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayBalance;

import java.io.IOException;

final class I extends c<String, PayBalance> {
    private /* synthetic */ PayAccountActivity a;

    public I(PayAccountActivity payAccountActivity, Activity activity) {
        this.a = payAccountActivity;
        super(activity);
    }

    public I(PayAccountActivity payAccountActivity, Activity activity, String string) {
        this.a = payAccountActivity;
        super(activity, string);
    }

    private /* varargs */ PayBalance a(String... arrstring) {
        try {
            PayBalance payBalance = b.b().b(arrstring[0]);
            return payBalance;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        PayBalance payBalance = (PayBalance) object;
        if (payBalance != null && payBalance.isOk()) {
            PayAccountActivity.b(this.a).setBalance("" + payBalance.getBalance() + "\u679a");
            PayAccountActivity.c(this.a).setBalance("" + payBalance.getVoucherBalance() + "\u5f20");
        }
    }
}
