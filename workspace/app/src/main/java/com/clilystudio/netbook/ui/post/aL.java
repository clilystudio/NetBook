
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class aL implements Runnable {

    aL(aK aK1)
    {
        a = aK1;
    }

    private aK a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) BookTopicListFragment.b( a.a ) ) )
            BookTopicListFragment.b( a.a ).cancel( true );
        BookTopicListFragment.c( a.a );
    }
}
