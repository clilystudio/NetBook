
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class dE implements k {

    dE(TweetHotFragment TweetHotFragment1)
    {
        a = TweetHotFragment1;
    }

    TweetHotFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        TweetHotFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new dF( this ), 1000L );
    }
}
