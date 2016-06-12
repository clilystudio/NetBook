
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.GirlTopicList;
import com.clilystudio.netbook.model.GirlTopicSummary;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class bJ extends com.clilystudio.netbook.a.e {

    bJ(GirlTopicListActivity GirlTopicListActivity1, byte byte2)
    {
        this( GirlTopicListActivity1 );
    }

    private GirlTopicListActivity a;

    private bJ(GirlTopicListActivity GirlTopicListActivity1)
    {
        a = GirlTopicListActivity1;
    }

    private transient GirlTopicList a(String[] String_1darray1)
    {
        GirlTopicList GirlTopicList3;

        try
        {
            GirlTopicList3 = com.clilystudio.netbook.api.b.b().b( String_1darray1[0], String_1darray1[1], 0, 20, GirlTopicListActivity.n( a ) );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return GirlTopicList3;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (GirlTopicList) Object1;

        super.onPostExecute( Object2 );
        GirlTopicListActivity.d( a ).setVisibility( 8 );
        GirlTopicListActivity.o( a ).setVisibility( 8 );
        GirlTopicListActivity.p( a ).setVisibility( 8 );
        GirlTopicListActivity.l( a ).n();
        if( Object2 != null && ((GirlTopicList) Object2).getPosts() != null )
        {
            GirlTopicSummary[] GirlTopicSummary_1darray3;
            int int4;

            GirlTopicListActivity.j( a ).clear();
            GirlTopicSummary_1darray3 = ((GirlTopicList) Object2).getPosts();
            int4 = GirlTopicSummary_1darray3.length;
            if( int4 > 0 )
            {
                Object Object5 = Arrays.asList( GirlTopicSummary_1darray3 );

                GirlTopicListActivity.j( a ).addAll( (Collection) Object5 );
                GirlTopicListActivity.q( a ).a( (Collection) GirlTopicListActivity.j( a ) );
                if( int4 < 20 )
                    GirlTopicListActivity.l( a ).setOnLastItemVisibleListener( null );
                else
                    GirlTopicListActivity.l( a ).setOnLastItemVisibleListener( GirlTopicListActivity.r( a ) );
            }
            else
            {
                GirlTopicListActivity.j( a ).clear();
                GirlTopicListActivity.q( a ).a( (Collection) GirlTopicListActivity.j( a ) );
                GirlTopicListActivity.l( a ).setOnLastItemVisibleListener( null );
                GirlTopicListActivity.s( a );
            }
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
    }
}
