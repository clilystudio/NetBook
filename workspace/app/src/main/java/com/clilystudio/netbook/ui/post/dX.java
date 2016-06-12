
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class dX implements k {

    dX(TweetTimelineFragment TweetTimelineFragment1)
    {
        a = TweetTimelineFragment1;
    }

    TweetTimelineFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        TweetTimelineFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new dY( this ), 1000L );
    }
}
