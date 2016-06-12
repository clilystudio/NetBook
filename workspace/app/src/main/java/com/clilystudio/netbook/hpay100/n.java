package com.clilystudio.netbook.hpay100;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.hpay100.config.l;

final class n implements View$OnClickListener {

    private HPaySdkActivity a;

    n(HPaySdkActivity HPaySdkActivity1) {
        a = HPaySdkActivity1;
    }

    public final void onClick(View View1) {
        Object Object2 = HPaySdkActivity.n(a).getText().toString();

        if (TextUtils.isEmpty((CharSequence) Object2))
            HPaySdkActivity.k(a).setText((CharSequence) "\u9A8C\u8BC1\u7801\u4E0D\u80FD\u4E3A\u7A7A");
        else {
            HPaySdkActivity.a(a, "\u652F\u4ED8\u8FDB\u884C\u4E2D\uFF0C\u8BF7\u60A8\u8010\u5FC3\u7B49\u5F85");
            l.a((Activity) a, HPaySdkActivity.h(a).mOrderidHR, (String) Object2, (com.clilystudio.netbook.hpay100.config.k) new w(a, 4));
        }
    }
}
