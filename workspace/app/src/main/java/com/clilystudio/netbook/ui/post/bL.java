
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bL implements k {

    bL(MyTweetFragment MyTweetFragment1)
    {
        a = MyTweetFragment1;
    }

    MyTweetFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        MyTweetFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new bM( this ), 1000L );
    }
}
