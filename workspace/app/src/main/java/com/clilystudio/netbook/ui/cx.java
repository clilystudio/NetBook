package com.clilystudio.netbook.ui;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class cx implements PlatformActionListener {

    private cw a;

    cx(cw cw1) {
        a = cw1;
    }

    public final void onCancel(Platform Platform1, int int2) {
        cw.a(a, "fail");
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3) {
        cw.a(a, "success");
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3) {
        cw.a(a, "fail");
    }
}
