
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class dM implements j {

    dM(TweetListFragment TweetListFragment1)
    {
        a = TweetListFragment1;
    }

    private TweetListFragment a;

    public final void a()
    {
        if( TweetListFragment.b( a ) == null || TweetListFragment.b( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            TweetListFragment.k( a ).setVisibility( 0 );
            if( !android.support.design.widget.am.a( (AsyncTask) TweetListFragment.l( a ) ) )
                TweetListFragment.l( a ).cancel( true );
            TweetListFragment.a( a, new dN( a, (byte) 0 ) );
            TweetListFragment.b( a ).b( new String[] { "50bff3ec209793513100001c", "updated" } );
        }
    }
}
