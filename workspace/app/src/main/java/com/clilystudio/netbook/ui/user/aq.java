package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

final class aq implements View$OnClickListener {

    private SmsSendActivity a;

    aq(SmsSendActivity SmsSendActivity1) {
        a = SmsSendActivity1;
    }

    public final void onClick(View View1) {
        if (SmsSendActivity.a(a, a.mNumberText.getText().toString())) {
            Intent Intent2 = SmsVerifyActivity.a((Context) a, SmsSendActivity.c(a), a.mNumberText.getText().toString());

            a.startActivity(Intent2);
        } else
            SmsSendActivity.d(a);
    }
}
