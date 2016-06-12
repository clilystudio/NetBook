
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bZ implements k {

    bZ(OtherUserActivity OtherUserActivity1)
    {
        a = OtherUserActivity1;
    }

    OtherUserActivity a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        OtherUserActivity.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new ca( this ), 1000L );
    }
}
