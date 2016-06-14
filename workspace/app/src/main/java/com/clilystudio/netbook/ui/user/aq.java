package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aq implements View.OnClickListener {
    private /* synthetic */ SmsSendActivity a;

    aq(SmsSendActivity smsSendActivity) {
        this.a = smsSendActivity;
    }

    @Override
    public final void onClick(View view) {
        if (SmsSendActivity.a(this.a, this.a.mNumberText.getText().toString())) {
            Intent intent = SmsVerifyActivity.a(this.a, SmsSendActivity.c(this.a), this.a.mNumberText.getText().toString());
            this.a.startActivity(intent);
            return;
        }
        SmsSendActivity.d(this.a);
    }
}
