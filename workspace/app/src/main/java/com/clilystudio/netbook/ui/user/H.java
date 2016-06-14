package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayResult;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class H
        extends c<String, PayResult> {
    private /* synthetic */ PayAccountActivity a;

    public H(PayAccountActivity payAccountActivity, Activity activity, String string) {
        this.a = payAccountActivity;
        super(activity, string);
    }

    private /* varargs */ PayResult a(String... arrstring) {
        try {
            PayResult payResult = b.b().a(arrstring[0], PayAccountActivity.a(this.a));
            return payResult;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        PayResult payResult = (PayResult) object;
        if (payResult != null && payResult.getChargeOrder() != null && payResult.getChargeOrder().isCompleted()) {
            I i = new I(this.a, this.a, "\u6b63\u5728\u66f4\u65b0\u8d44\u4ea7\u4fe1\u606f...");
            String[] arrstring = new String[]{PayAccountActivity.a(this.a)};
            i.b(arrstring);
            return;
        }
        e.a((Activity) this.a, (String) "\u672a\u67e5\u5230\u652f\u4ed8\u7ed3\u679c\uff0c\u8bf7\u7a0d\u5019\u66f4\u65b0");
    }
}
