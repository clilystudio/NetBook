package com.clilystudio.netbook.pay.a;

import android.app.Activity;
import android.os.Message;

import com.alipay.sdk.app.PayTask;
import com.clilystudio.netbook.model.AliPayOrder;

final class d
        implements Runnable {
    d(c paramc, AliPayOrder paramAliPayOrder) {
    }

    public final void run() {
        String str = new PayTask((Activity) a.a(this.b.a)).pay(this.a.getPayOrder().getPayString());
        Message localMessage = new Message();
        localMessage.what = 1;
        localMessage.obj = str;
        a.b(this.b.a).sendMessage(localMessage);
    }
}

