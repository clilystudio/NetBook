package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.os.Message;

import com.alipay.sdk.app.PayTask;
import com.clilystudio.netbook.model.AliPayOrder;

final class d implements Runnable {

    private AliPayOrder a;
    private c b;
    d(c c1, AliPayOrder AliPayOrder2) {
        b = c1;
        a = AliPayOrder2;
    }

    public final void run() {
        String String1 = new PayTask((Activity) a.a(b.a)).pay(a.getPayOrder().getPayString());
        Message Message2 = new Message();

        Message2.what = 1;
        Message2.obj = String1;
        a.b(b.a).sendMessage(Message2);
    }
}
