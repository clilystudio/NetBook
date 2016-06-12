
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.adapter.F;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.widget.LabelPtrListView;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class A extends com.clilystudio.netbook.a.e {

    A(MyFavTopicFragment MyFavTopicFragment1, byte byte2)
    {
        this( MyFavTopicFragment1 );
    }

    private MyFavTopicFragment a;

    private A(MyFavTopicFragment MyFavTopicFragment1)
    {
        a = MyFavTopicFragment1;
    }

    private static transient Topic a(String[] String_1darray1)
    {
        Topic Topic4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            Topic4 = com.clilystudio.netbook.api.b.b().d( String_1darray1[0], 0 );
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
        MyFavTopicFragment.a( a ).setVisibility( 8 );
        MyFavTopicFragment.c( a ).setVisibility( 8 );
        MyFavTopicFragment.i( a ).setVisibility( 8 );
        MyFavTopicFragment.d( a ).n();
        MyFavTopicFragment.d( a ).setOnLastItemVisibleListener( MyFavTopicFragment.j( a ) );
        if( Object2 != null )
        {
            if( ((Topic) Object2).isOk() )
            {
                TopicPost[] TopicPost_1darray4;
                int int5;
                Object Object6;

                MyFavTopicFragment.a( a, 0 );
                MyFavTopicFragment.h( a ).clear();
                TopicPost_1darray4 = ((Topic) Object2).getPosts();
                int5 = TopicPost_1darray4.length;
                Object6 = Arrays.asList( TopicPost_1darray4 );
                MyFavTopicFragment.a( a, MyFavTopicFragment.k( a ) + ((List) Object6).size() );
                MyFavTopicFragment.h( a ).addAll( (Collection) Object6 );
                MyFavTopicFragment.l( a ).a( (Collection) MyFavTopicFragment.h( a ) );
                MyFavTopicFragment.b( a, int5 );
                if( int5 < 10 )
                {
                    MyFavTopicFragment.d( a ).setOnLastItemVisibleListener( null );
                    if( int5 == 0 )
                    {
                        MyFavTopicFragment.a( a ).setVisibility( 0 );
                        MyFavTopicFragment.a( a ).setText( (CharSequence) "\u4F60\u8FD8\u6CA1\u6709\u6536\u85CF\u54E6\uFF0C\u5FEB\u53BB\u6536\u85CF\u4E00\u4E2A\u5427" );
                    }
                }
            }
            else
                com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u4E0B\u62C9\u5237\u65B0\u91CD\u8BD5" );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5" );
    }
}
