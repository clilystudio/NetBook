
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class bM implements Runnable {

    bM(bL bL1)
    {
        a = bL1;
    }

    private bL a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) MyTweetFragment.b( a.a ) ) )
            MyTweetFragment.b( a.a ).cancel( true );
        MyTweetFragment.c( a.a );
    }
}
