package com.clilystudio.netbook.ui.user;

import android.view.View;

final class as implements View.OnClickListener {
    private /* synthetic */ SmsVerifyActivity a;

    as(SmsVerifyActivity smsVerifyActivity) {
        this.a = smsVerifyActivity;
    }

    @Override
    public final void onClick(View view) {
        SmsVerifyActivity.a(this.a);
    }
}
