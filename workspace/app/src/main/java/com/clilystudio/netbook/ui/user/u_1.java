
package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class u implements k {

    u(MyFavTopicFragment MyFavTopicFragment1)
    {
        a = MyFavTopicFragment1;
    }

    MyFavTopicFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        MyFavTopicFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new v( this ), 1000L );
    }
}
