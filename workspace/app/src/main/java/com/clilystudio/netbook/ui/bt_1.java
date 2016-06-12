
package com.clilystudio.netbook.ui;

import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.model.Account;

final class bt implements Runnable {

    bt(bs bs1)
    {
        a = bs1;
    }

    private bs a;

    public final void run()
    {
        if( NotifFragment.c( a.a ) == null )
        {
            NotifFragment.a( a.a, false );
            NotifFragment.d( a.a ).n();
        }
        else
            a.a.c();
    }
}
