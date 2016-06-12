
package com.clilystudio.netbook.util;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

final class U implements Runnable {

    U(PlatformActionListener PlatformActionListener1)
    {
        a = PlatformActionListener1;
    }

    private PlatformActionListener a;

    public final void run()
    {
        a.onComplete( null, 0, null );
    }
}
