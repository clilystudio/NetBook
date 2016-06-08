package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;

final class aq
        implements View.OnClickListener {
    aq(SmsSendActivity paramSmsSendActivity) {
    }

    public final void onClick(View paramView) {
        if (SmsSendActivity.a(this.a, this.a.mNumberText.getText().toString())) {
            Intent localIntent = SmsVerifyActivity.a(this.a, SmsSendActivity.c(this.a), this.a.mNumberText.getText().toString());
            this.a.startActivity(localIntent);
            return;
        }
        SmsSendActivity.d(this.a);
    }
}

