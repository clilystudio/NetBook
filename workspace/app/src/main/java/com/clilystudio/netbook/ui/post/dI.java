
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import java.util.List;

final class dI extends com.clilystudio.netbook.a.e {

    dI(TweetHotFragment TweetHotFragment1, byte byte2)
    {
        this( TweetHotFragment1 );
    }

    private TweetHotFragment a;

    private dI(TweetHotFragment TweetHotFragment1)
    {
        a = TweetHotFragment1;
    }

    private static transient HotTweetResult a()
    {
        HotTweetResult HotTweetResult3;

        try
        {
            com.clilystudio.netbook.api.b.a();
            HotTweetResult3 = com.clilystudio.netbook.api.b.b().j( null );
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return HotTweetResult3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (HotTweetResult) Object1;

        super.onPostExecute( Object2 );
        if( a.getActivity() != null )
        {
            TweetHotFragment.d( a );
            if( Object2 != null && ((HotTweetResult) Object2).isOk() )
            {
                int int3;

                TweetHotFragment.e( a ).clear();
                int3 = ((HotTweetResult) Object2).getTweets().length;
                if( int3 > 0 )
                {
                    TweetHotFragment.a( a, (HotTweetResult) Object2 );
                    TweetHotFragment.b( a, (HotTweetResult) Object2 );
                    if( int3 < 10 )
                        TweetHotFragment.f( a ).setOnLastItemVisibleListener( null );
                    else
                    {
                        TweetHotFragment.f( a ).setOnLastItemVisibleListener( TweetHotFragment.g( a ) );
                        return;
                    }
                }
                else
                {
                    TweetHotFragment.h( a );
                    return;
                }
            }
            else
            {
                com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
                return;
            }
        }
    }
}
