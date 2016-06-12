
package com.clilystudio.netbook.ui.ugcbook;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.netbook.util.e;
import java.util.HashMap;

final class o implements PlatformActionListener {

    o(UGCDetailActivity UGCDetailActivity1)
    {
    }

    public final void onCancel(Platform Platform1, int int2)
    {
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3)
    {
        e.c( "share" );
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3)
    {
    }
}
