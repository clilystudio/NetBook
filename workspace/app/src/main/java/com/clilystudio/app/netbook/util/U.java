package com.clilystudio.app.netbook.util;

import cn.sharesdk.framework.PlatformActionListener;

final class U
        implements Runnable {
    U(PlatformActionListener paramPlatformActionListener) {
    }

    public final void run() {
        this.a.onComplete(null, 0, null);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.U
 * JD-Core Version:    0.6.2
 */