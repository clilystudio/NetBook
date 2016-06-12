
package com.clilystudio.netbook.ui.ugcbook;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class ap implements k {

    ap(UGCMainListFragment UGCMainListFragment1)
    {
        a = UGCMainListFragment1;
    }

    UGCMainListFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        UGCMainListFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new aq( this ), 1000L );
    }
}
