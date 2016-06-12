package com.clilystudio.netbook.ui.user;

import android.os.Message;

import java.util.TimerTask;

final class aw extends TimerTask {

    private SmsVerifyActivity a;

    aw(SmsVerifyActivity SmsVerifyActivity1) {
        a = SmsVerifyActivity1;
    }

    public final void run() {
        Message Message1;

        if (SmsVerifyActivity.b(a) > 0)
            SmsVerifyActivity.c(a);
        Message1 = new Message();
        Message1.what = 1;
        Message1.arg1 = SmsVerifyActivity.b(a);
        a.a.sendMessage(Message1);
    }
}
