package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

import java.io.File;

final class C extends Handler {
    private /* synthetic */ A a;

    C(A a) {
        this.a = a;
    }

    @Override
    public final void handleMessage(Message message) {
        switch (message.what) {
            default: {
                return;
            }
            case 1: {
                A.e(this.a).setProgress(A.d(this.a));
                A.h(this.a).setText(A.f(this.a) + " / " + A.g(this.a));
                return;
            }
            case 2: {
                A.i(this.a);
                a.a((Context) A.j(this.a), new File(A.a(this.a)));
                return;
            }
            case 0:
        }
        A.i(this.a);
        Toast.makeText((Context) A.j(this.a), "\u65e0\u6cd5\u4e0b\u8f7d\u5b89\u88c5\u6587\u4ef6\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d", 0).show();
    }
}
