
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class dJ implements k {

    dJ(TweetListFragment TweetListFragment1)
    {
        a = TweetListFragment1;
    }

    TweetListFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        TweetListFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new dK( this ), 1000L );
    }
}
