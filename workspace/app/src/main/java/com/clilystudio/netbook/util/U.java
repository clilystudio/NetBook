package com.clilystudio.netbook.util;

import cn.sharesdk.framework.PlatformActionListener;

final class U implements Runnable {
    private /* synthetic */ PlatformActionListener a;

    U(PlatformActionListener platformActionListener) {
        this.a = platformActionListener;
    }

    @Override
    public final void run() {
        this.a.onComplete(null, 0, null);
    }
}
