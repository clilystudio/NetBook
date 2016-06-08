package com.clilystudio.netbook.util;

import cn.sharesdk.framework.PlatformActionListener;

final class U
        implements Runnable {
    U(PlatformActionListener paramPlatformActionListener) {
    }

    public final void run() {
        this.a.onComplete(null, 0, null);
    }
}

