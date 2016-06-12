
package com.clilystudio.netbook.util.adutil;

import com.clilystudio.netbook.ui.SplashActivity;

final class d implements Runnable {

    d(c c1)
    {
        a = c1;
    }

    private c a;

    public final void run()
    {
        AdSplashImp.a( a.a.b ).d();
    }
}
