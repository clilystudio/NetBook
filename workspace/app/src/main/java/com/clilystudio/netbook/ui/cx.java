
package com.clilystudio.netbook.ui;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.util.HashMap;

final class cx implements PlatformActionListener {

    cx(cw cw1)
    {
        a = cw1;
    }

    private cw a;

    public final void onCancel(Platform Platform1, int int2)
    {
        cw.a( a, "fail" );
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3)
    {
        cw.a( a, "success" );
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3)
    {
        cw.a( a, "fail" );
    }
}
