
package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.Tweet$VoteOption;
import com.clilystudio.netbook.model.TweetResult;
import com.clilystudio.netbook.model.User;

final class dz extends e {

    dz(TweetDetailActivity TweetDetailActivity1, byte byte2)
    {
        this( TweetDetailActivity1 );
    }

    private TweetDetailActivity a;

    private dz(TweetDetailActivity TweetDetailActivity1)
    {
        a = TweetDetailActivity1;
    }

    private transient TweetResult a()
    {
        TweetResult TweetResult2;

        try
        {
            TweetResult2 = com.clilystudio.netbook.api.b.b().l( a.a );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return TweetResult2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (TweetResult) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((TweetResult) Object2).getTweet() != null )
        {
            TweetDetailActivity.a( a, (TweetResult) Object2 );
            TweetDetailActivity.c( a ).getTweet().setUser( TweetDetailActivity.c( a ).getUser() );
            if( ((TweetResult) Object2).getTweet().isArticle() )
                TweetDetailActivity.b( a, "ARTICLE" );
            else
                TweetDetailActivity.b( a, "TWEET" );
            a.f();
            TweetDetailActivity.b( a, (TweetResult) Object2 );
            TweetDetailActivity.a( a, TweetDetailActivity.c( a ).getTweet().getVotes() );
            TweetDetailActivity.g( a );
            TweetDetailActivity.h( a );
        }
        else
            a.h();
    }
}
