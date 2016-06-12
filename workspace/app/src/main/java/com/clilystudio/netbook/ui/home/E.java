
package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;
import com.squareup.a.b;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.i;

final class E implements k {

    E(HomeShelfFragment HomeShelfFragment1)
    {
        a = HomeShelfFragment1;
    }

    HomeShelfFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        i.a().c( new BookShelfRefreshEvent() );
        HomeShelfFragment.e( a );
        HomeShelfAdapter.a = true;
        new Handler().postDelayed( (Runnable) new F( this ), 1000L );
    }
}
