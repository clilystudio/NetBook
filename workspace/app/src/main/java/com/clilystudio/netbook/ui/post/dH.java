
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.model.TimelineResult$Temp;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import java.util.List;

final class dH extends com.clilystudio.netbook.a.e {

    dH(TweetHotFragment TweetHotFragment1, byte byte2)
    {
        this( TweetHotFragment1 );
    }

    private TweetHotFragment a;

    private dH(TweetHotFragment TweetHotFragment1)
    {
        a = TweetHotFragment1;
    }

    private static transient HotTweetResult a(String[] String_1darray1)
    {
        HotTweetResult HotTweetResult4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            HotTweetResult4 = com.clilystudio.netbook.api.b.b().j( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return HotTweetResult4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
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
                TimelineResult$Temp[] Temp_1darray3 = ((HotTweetResult) Object2).getTweets();
                int int4 = Temp_1darray3.length;

                if( int4 > 0 )
                {
                    int int5 = Temp_1darray3.length;
                    int int6;

                    for( int6 = 0; int6 < int5; ++int6 )
                    {
                        TimelineResult$Temp Temp7 = Temp_1darray3[int6];

                        Temp7.getTweet().setUser( Temp7.getUser() );
                        TweetHotFragment.e( a ).add( Temp7.getTweet() );
                    }
                    TweetHotFragment.i( a ).a( TweetHotFragment.e( a ) );
                    if( int4 < 10 )
                        TweetHotFragment.f( a ).setOnLastItemVisibleListener( null );
                    else
                    {
                        TweetHotFragment.f( a ).setOnLastItemVisibleListener( TweetHotFragment.g( a ) );
                        return;
                    }
                }
                else if( TweetHotFragment.e( a ).size() == 0 )
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
