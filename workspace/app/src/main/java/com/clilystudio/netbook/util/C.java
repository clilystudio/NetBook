package com.clilystudio.netbook.util;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

import com.arcsoft.hpay100.a.a;

import java.io.File;

final class C extends Handler {
    C(A paramA) {
    }

    public final void handleMessage(Message paramMessage) {
        switch (paramMessage.what) {
            default:
                return;
            case 1:
                A.e(this.a).setProgress(A.d(this.a));
                A.h(this.a).setText(A.f(this.a) + " / " + A.g(this.a));
                return;
            case 2:
                A.i(this.a);
                a.a(A.j(this.a), new File(A.a(this.a)));
                return;
            case 0:
        }
        A.i(this.a);
        Toast.makeText(A.j(this.a), "无法下载安装文件，请检查SD卡是否挂载", 0).show();
    }
}

