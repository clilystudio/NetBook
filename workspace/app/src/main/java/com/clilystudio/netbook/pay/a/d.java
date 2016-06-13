package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.os.Message;

import com.alipay.sdk.app.PayTask;
import com.clilystudio.netbook.model.AliPayOrder;

final class d
        implements Runnable {
    private /* synthetic */ AliPayOrder a;
    private /* synthetic */ c b;

    d(c c2, AliPayOrder aliPayOrder) {
        this.b = c2;
        this.a = aliPayOrder;
    }

    @Override
    public final void run() {
        String string = new PayTask((Activity) a.a(this.b.a)).pay(this.a.getPayOrder().getPayString());
        Message message = new Message();
        message.what = 1;
        message.obj = string;
        a.b(this.b.a).sendMessage(message);
    }
}
