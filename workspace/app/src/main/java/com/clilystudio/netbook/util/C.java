package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

import java.io.File;

final class C extends Handler {

    private A a;

    C(A A1) {
        a = A1;
    }

    public final void handleMessage(Message Message1) {
        switch (Message1.what) {
            default:
                return;
            case 1:
                A.e(a).setProgress(A.d(a));
                A.h(a).setText((CharSequence) new StringBuilder().append(A.f(a)).append(" / ").append(A.g(a)).toString());
                return;
            case 2:
                A.i(a);
                com.clilystudio.netbook.hpay100.a.a.a((Context) A.j(a), new File(A.a(a)));
                return;
            case 0:
                A.i(a);
                Toast.makeText((Context) A.j(a), (CharSequence) "\u65E0\u6CD5\u4E0B\u8F7D\u5B89\u88C5\u6587\u4EF6\uFF0C\u8BF7\u68C0\u67E5SD\u5361\u662F\u5426\u6302\u8F7D", 0).show();
                return;
        }
    }
}
