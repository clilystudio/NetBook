
package com.clilystudio.netbook.ui.post;

import android.widget.LinearLayout;

final class dU implements Runnable {

    dU(TweetTabActivity TweetTabActivity1)
    {
        a = TweetTabActivity1;
    }

    private TweetTabActivity a;

    public final void run()
    {
        TweetTabActivity.k( a ).setVisibility( 8 );
        TweetTabActivity.l( a ).setVisibility( 8 );
    }
}
