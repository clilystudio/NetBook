
package com.clilystudio.netbook.ui.ugcbook;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class b implements k {

    b(AbsUGCListFragment AbsUGCListFragment1)
    {
        a = AbsUGCListFragment1;
    }

    AbsUGCListFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        a.j.setVisibility( 8 );
        a.f.postDelayed( (Runnable) new c( this ), 1000L );
    }
}
