
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostBook;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.widget.LabelPtrListView;
import java.util.Collection;
import java.util.List;

final class F extends com.clilystudio.netbook.a.e {

    F(MyTopicFragment MyTopicFragment1, byte byte2)
    {
        this( MyTopicFragment1 );
    }

    private MyTopicFragment a;

    private F(MyTopicFragment MyTopicFragment1)
    {
        a = MyTopicFragment1;
    }

    private transient Topic a(String[] String_1darray1)
    {
        if( !isCancelled() )
        {
            try
            {
                Topic Topic4;

                com.clilystudio.netbook.api.b.a();
                Topic4 = com.clilystudio.netbook.api.b.b().e( String_1darray1[0], MyTopicFragment.h( a ).size() );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
            }
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (Topic) Object1;

        super.onPostExecute( Object2 );
        MyTopicFragment.a( a ).setVisibility( 8 );
        MyTopicFragment.c( a ).setVisibility( 8 );
        MyTopicFragment.i( a ).setVisibility( 8 );
        MyTopicFragment.d( a ).n();
        if( !isCancelled() )
        {
            if( Object2 != null && ((Topic) Object2).getPosts() != null )
            {
                Object[] Object_1darray3 = ((Topic) Object2).getPosts();
                int int4 = Object_1darray3.length;

                if( int4 > 0 )
                {
                    int int5 = Object_1darray3.length;
                    int int6;

                    for( int6 = 0; int6 < int5; ++int6 )
                    {
                        Object Object7 = Object_1darray3[int6];

                        if( ((TopicPost) Object7).getBook() != null )
                            MyTopicFragment.h( a ).add( Object7 );
                    }
                    MyTopicFragment.k( a ).a( (Collection) MyTopicFragment.h( a ) );
                    MyTopicFragment.a( a, MyTopicFragment.h( a ).size() );
                    if( int4 >= 10 )
                    {
                        MyTopicFragment.d( a ).setOnLastItemVisibleListener( MyTopicFragment.j( a ) );
                        return;
                    }
                }
                MyTopicFragment.d( a ).setOnLastItemVisibleListener( null );
            }
            else
                com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
            return;
        }
    }
}
