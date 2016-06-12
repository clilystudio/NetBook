
package com.clilystudio.netbook.ui;

import android.content.Context;
import com.clilystudio.netbook.umeng.a.b;

final class cf implements cd {

    cf(ShareRemoveAdActivity ShareRemoveAdActivity1)
    {
        a = ShareRemoveAdActivity1;
    }

    private ShareRemoveAdActivity a;

    public final void a(int int1)
    {
        ShareRemoveAdActivity.a( a, int1 );
        b.a( (Context) a, "share_remove_channel_click", new StringBuilder().append( int1 ).toString() );
    }
}
