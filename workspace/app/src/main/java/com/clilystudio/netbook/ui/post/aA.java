
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class aA implements Runnable {

    aA(az az1)
    {
        a = az1;
    }

    private az a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) BookReviewListFragment.b( a.a ) ) )
            BookReviewListFragment.b( a.a ).cancel( true );
        BookReviewListFragment.c( a.a );
    }
}
