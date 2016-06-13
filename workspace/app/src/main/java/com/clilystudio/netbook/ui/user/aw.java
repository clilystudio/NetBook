package com.clilystudio.netbook.ui.user;

import android.os.Message;

import java.util.TimerTask;

final class aw
        extends TimerTask {
    private /* synthetic */ SmsVerifyActivity a;

    aw(SmsVerifyActivity smsVerifyActivity) {
        this.a = smsVerifyActivity;
    }

    @Override
    public final void run() {
        if (SmsVerifyActivity.b(this.a) > 0) {
            SmsVerifyActivity.c(this.a);
        }
        Message message = new Message();
        message.what = 1;
        message.arg1 = SmsVerifyActivity.b(this.a);
        this.a.a.sendMessage(message);
    }
}
