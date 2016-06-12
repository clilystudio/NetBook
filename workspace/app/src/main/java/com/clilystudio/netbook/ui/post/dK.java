
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class dK implements Runnable {

    dK(dJ dJ1)
    {
        a = dJ1;
    }

    private dJ a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) TweetListFragment.b( a.a ) ) )
            TweetListFragment.b( a.a ).cancel( true );
        TweetListFragment.c( a.a );
    }
}
