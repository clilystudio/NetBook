package com.clilystudio.netbook.ui;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class cx implements PlatformActionListener {
    private /* synthetic */ cw a;

    cx(cw cw2) {
        this.a = cw2;
    }

    @Override
    public final void onCancel(Platform platform, int n) {
        cw.a(this.a, "fail");
    }

    @Override
    public final void onComplete(Platform platform, int n, HashMap<String, Object> hashMap) {
        cw.a(this.a, "success");
    }

    @Override
    public final void onError(Platform platform, int n, Throwable throwable) {
        cw.a(this.a, "fail");
    }
}
