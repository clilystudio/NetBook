package com.clilystudio.netbook.ui;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;

final class cx
        implements PlatformActionListener {
    cx(cw paramcw) {
    }

    public final void onCancel(Platform paramPlatform, int paramInt) {
        cw.a(this.a, "fail");
    }

    public final void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap) {
        cw.a(this.a, "success");
    }

    public final void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable) {
        cw.a(this.a, "fail");
    }
}

