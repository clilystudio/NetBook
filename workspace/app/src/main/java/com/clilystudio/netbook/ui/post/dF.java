
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class dF implements Runnable {

    dF(dE dE1)
    {
        a = dE1;
    }

    private dE a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) TweetHotFragment.b( a.a ) ) )
            TweetHotFragment.b( a.a ).cancel( true );
        TweetHotFragment.c( a.a );
    }
}
