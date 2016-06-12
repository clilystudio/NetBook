
package com.clilystudio.netbook.ui.home;

import android.os.Handler;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class L implements k {

    L(HomeTopicFragment HomeTopicFragment1)
    {
        a = HomeTopicFragment1;
    }

    HomeTopicFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        new Handler().postDelayed( (Runnable) new M( this ), 1000L );
    }
}
