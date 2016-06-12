
package com.clilystudio.netbook.reader;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import com.clilystudio.netbook.util.e;
import java.util.HashMap;

final class ba implements PlatformActionListener {

    ba(ReaderActivity ReaderActivity1)
    {
    }

    public final void onCancel(Platform Platform1, int int2)
    {
    }

    public final void onComplete(Platform Platform1, int int2, HashMap HashMap3)
    {
        e.c( "share_book" );
    }

    public final void onError(Platform Platform1, int int2, Throwable Throwable3)
    {
    }
}
