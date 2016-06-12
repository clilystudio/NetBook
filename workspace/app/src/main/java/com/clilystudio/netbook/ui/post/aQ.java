
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import java.util.Collection;
import java.util.List;

final class aQ extends com.clilystudio.netbook.a.e {

    aQ(BookTopicListFragment BookTopicListFragment1, byte byte2)
    {
        this( BookTopicListFragment1 );
    }

    private BookTopicListFragment a;

    private aQ(BookTopicListFragment BookTopicListFragment1)
    {
        a = BookTopicListFragment1;
    }

    private transient Topic a(String[] String_1darray1)
    {
        Topic Topic4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            Topic4 = com.clilystudio.netbook.api.b.b().b( String_1darray1[0], String_1darray1[1], BookTopicListFragment.d( a ).size(), 20 );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return Topic4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (Topic) Object1;

        super.onPostExecute( Object2 );
        if( a.getActivity() != null )
        {
            a.c();
            if( !isCancelled() )
            {
                if( Object2 != null && ((Topic) Object2).getPosts() != null )
                {
                    TopicPost[] TopicPost_1darray3 = ((Topic) Object2).getPosts();
                    int int4 = TopicPost_1darray3.length;

                    if( int4 > 0 )
                    {
                        int int5 = TopicPost_1darray3.length;
                        int int6;

                        for( int6 = 0; int6 < int5; ++int6 )
                        {
                            TopicPost TopicPost7 = TopicPost_1darray3[int6];

                            BookTopicListFragment.d( a ).add( TopicPost7 );
                        }
                        BookTopicListFragment.g( a ).a( (Collection) BookTopicListFragment.d( a ) );
                        if( int4 >= 20 )
                        {
                            a.a.setOnLastItemVisibleListener( BookTopicListFragment.h( a ) );
                            return;
                        }
                    }
                    a.a.setOnLastItemVisibleListener( null );
                }
                else
                    com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u91CD\u8BD5" );
                return;
            }
        }
    }
}
