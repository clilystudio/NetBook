package com.clilystudio.app.netbook.ui.user;

import android.os.Message;

import java.util.TimerTask;

final class aw extends TimerTask {
    aw(SmsVerifyActivity paramSmsVerifyActivity) {
    }

    public final void run() {
        if (SmsVerifyActivity.b_initContentView(this.a) > 0)
            SmsVerifyActivity.c_initContentView(this.a);
        Message localMessage = new Message();
        localMessage.what = 1;
        localMessage.arg1 = SmsVerifyActivity.b_initContentView(this.a);
        this.a.a.sendMessage(localMessage);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aw
 * JD-Core Version:    0.6.2
 */