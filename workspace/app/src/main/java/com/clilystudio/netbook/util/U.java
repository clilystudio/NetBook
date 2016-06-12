package com.clilystudio.netbook.util;

import cn.sharesdk.framework.PlatformActionListener;

final class U implements Runnable {

    private PlatformActionListener a;

    U(PlatformActionListener PlatformActionListener1) {
        a = PlatformActionListener1;
    }

    public final void run() {
        a.onComplete(null, 0, null);
    }
}
