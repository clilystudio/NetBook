package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.os.Message;

final class av
        extends Handler {
    private /* synthetic */ SmsVerifyActivity a;

    av(SmsVerifyActivity smsVerifyActivity) {
        this.a = smsVerifyActivity;
    }

    @Override
    public final void handleMessage(Message message) {
        switch (message.what) {
            default: {
                return;
            }
            case 1:
        }
        SmsVerifyActivity.a(this.a, message.arg1);
    }
}
