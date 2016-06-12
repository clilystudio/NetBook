package com.clilystudio.netbook.hpay100;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

final class q implements TextWatcher {

    private HPaySdkActivity a;

    q(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void afterTextChanged(Editable Editable1) {
        Object Object2;

        com.clilystudio.netbook.hpay100.a.a.b("dalongTest", new StringBuilder("afterTextChanged editable:").append(Editable1.toString()).toString());
        Object2 = Editable1.toString().trim();
        HPaySdkActivity.c(a).setText((CharSequence) "");
        HPaySdkActivity.a(a, HPaySdkActivity.d(a), true);
        if (TextUtils.isEmpty((CharSequence) Object2))
            HPaySdkActivity.q(a).setEnabled(false);
        else
            HPaySdkActivity.q(a).setEnabled(true);
    }

    public final void beforeTextChanged(CharSequence CharSequence1, int int2, int int3, int int4) {
    }

    public final void onTextChanged(CharSequence CharSequence1, int int2, int int3, int int4) {
    }
}
