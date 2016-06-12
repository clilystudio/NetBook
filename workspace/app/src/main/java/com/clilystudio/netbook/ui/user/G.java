
package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.adapter.F;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostBook;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicPost;
import com.clilystudio.netbook.widget.LabelPtrListView;
import java.util.Collection;
import java.util.List;

final class G extends com.clilystudio.netbook.a.e {

    G(MyTopicFragment MyTopicFragment1, byte byte2)
    {
        this( MyTopicFragment1 );
    }

    private MyTopicFragment a;

    private G(MyTopicFragment MyTopicFragment1)
    {
        a = MyTopicFragment1;
    }

    private static transient Topic a(String[] String_1darray1)
    {
        Topic Topic4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            Topic4 = com.clilystudio.netbook.api.b.b().e( String_1darray1[0], 0 );
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
        int int2 = 0;
        Object Object3 = (Topic) Object1;

        super.onPostExecute( Object3 );
        MyTopicFragment.a( a ).setVisibility( 8 );
        MyTopicFragment.c( a ).setVisibility( 8 );
        MyTopicFragment.i( a ).setVisibility( 8 );
        MyTopicFragment.d( a ).n();
        if( Object3 != null && ((Topic) Object3).getPosts() != null )
        {
            Object[] Object_1darray4;
            int int5;

            MyTopicFragment.h( a ).clear();
            Object_1darray4 = ((Topic) Object3).getPosts();
            int5 = Object_1darray4.length;
            if( int5 > 0 )
            {
                int int6 = Object_1darray4.length;

                while( int2 < int6 )
                {
                    Object Object7 = Object_1darray4[int2];

                    if( ((TopicPost) Object7).getBook() != null )
                        MyTopicFragment.h( a ).add( Object7 );
                    ++int2;
                }
                if( int5 < 10 )
                    MyTopicFragment.d( a ).setOnLastItemVisibleListener( null );
                else
                    MyTopicFragment.d( a ).setOnLastItemVisibleListener( MyTopicFragment.j( a ) );
            }
            else
            {
                MyTopicFragment.a( a ).setVisibility( 0 );
                MyTopicFragment.a( a ).setText( (CharSequence) "\u4F60\u8FD8\u6CA1\u6709\u53D1\u5E03\u54E6\uFF0C\u5FEB\u53BB\u53D1\u5E03\u4E00\u4E2A\u5427" );
            }
            MyTopicFragment.k( a ).a( (Collection) MyTopicFragment.h( a ) );
            MyTopicFragment.a( a, MyTopicFragment.h( a ).size() );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a.getActivity(), "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5" );
    }
}
