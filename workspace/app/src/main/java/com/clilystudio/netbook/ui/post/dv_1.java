
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask$Status;
import com.clilystudio.netbook.widget.av;

final class dv implements av {

    dv(TweetDetailActivity TweetDetailActivity1)
    {
        a = TweetDetailActivity1;
    }

    private TweetDetailActivity a;

    public final void a()
    {
        if( TweetDetailActivity.m( a ) == null || TweetDetailActivity.m( a ).getStatus() == AsyncTask$Status.FINISHED )
            TweetDetailActivity.n( a );
    }
}
