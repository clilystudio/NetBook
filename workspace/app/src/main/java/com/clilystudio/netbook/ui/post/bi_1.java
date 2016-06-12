
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.clilystudio.netbook.adapter.l;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.DiscussSummary;
import com.clilystudio.netbook.model.DiscussSummaryList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class bi extends com.clilystudio.netbook.a.e {

    bi(CommonPostListActivity CommonPostListActivity1, byte byte2)
    {
        this( CommonPostListActivity1 );
    }

    private CommonPostListActivity a;

    private bi(CommonPostListActivity CommonPostListActivity1)
    {
        a = CommonPostListActivity1;
    }

    private transient DiscussSummary[] a(String[] String_1darray1)
    {
        try
        {
            DiscussSummaryList DiscussSummaryList3 = com.clilystudio.netbook.api.b.b().a( String_1darray1[0], String_1darray1[1], 0, 20, CommonPostListActivity.n( a ), CommonPostListActivity.o( a ) );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        DiscussSummary[] DiscussSummary_1darray2 = (DiscussSummary[]) Object1;

        super.onPostExecute( DiscussSummary_1darray2 );
        CommonPostListActivity.b( a ).setVisibility( 8 );
        CommonPostListActivity.p( a ).setVisibility( 8 );
        CommonPostListActivity.q( a ).setVisibility( 8 );
        CommonPostListActivity.j( a ).n();
        if( DiscussSummary_1darray2 != null )
        {
            int int3;

            CommonPostListActivity.h( a ).clear();
            int3 = DiscussSummary_1darray2.length;
            if( int3 > 0 )
            {
                CommonPostListActivity.h( a ).addAll( (Collection) Arrays.asList( DiscussSummary_1darray2 ) );
                CommonPostListActivity.r( a ).a( (Collection) CommonPostListActivity.h( a ) );
                if( int3 < 20 )
                    CommonPostListActivity.j( a ).setOnLastItemVisibleListener( null );
                else
                    CommonPostListActivity.j( a ).setOnLastItemVisibleListener( CommonPostListActivity.s( a ) );
            }
            else
            {
                CommonPostListActivity.r( a ).a( (Collection) CommonPostListActivity.h( a ) );
                CommonPostListActivity.j( a ).setOnLastItemVisibleListener( null );
                CommonPostListActivity.t( a );
            }
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
    }
}
