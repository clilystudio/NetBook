
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class dY implements Runnable {

    dY(dX dX1)
    {
        a = dX1;
    }

    private dX a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) TweetTimelineFragment.b( a.a ) ) )
            TweetTimelineFragment.b( a.a ).cancel( true );
        TweetTimelineFragment.c( a.a );
    }
}
