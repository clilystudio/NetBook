
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.netbook.adapter.D;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ReviewList;
import com.clilystudio.netbook.model.ReviewSummary;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

final class dp extends com.clilystudio.netbook.a.e {

    dp(ReviewListActivity ReviewListActivity1, byte byte2)
    {
        this( ReviewListActivity1 );
    }

    private ReviewListActivity a;

    private dp(ReviewListActivity ReviewListActivity1)
    {
        a = ReviewListActivity1;
    }

    private transient ReviewList a(String[] String_1darray1)
    {
        ReviewList ReviewList4;

        try
        {
            ReviewListActivity.q( a );
            ReviewList4 = com.clilystudio.netbook.api.b.b().a( String_1darray1[0], String_1darray1[1], String_1darray1[2], 0, 20, ReviewListActivity.p( a ) );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return ReviewList4;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (ReviewList) Object1;

        super.onPostExecute( Object2 );
        ReviewListActivity.e( a ).setVisibility( 8 );
        ReviewListActivity.r( a ).setVisibility( 8 );
        ReviewListActivity.s( a ).setVisibility( 8 );
        ReviewListActivity.n( a ).n();
        if( Object2 != null && ((ReviewList) Object2).getReviews() != null )
        {
            ReviewSummary[] ReviewSummary_1darray3;
            int int4;

            ReviewListActivity.l( a ).clear();
            ReviewSummary_1darray3 = ((ReviewList) Object2).getReviews();
            int4 = ReviewSummary_1darray3.length;
            if( int4 > 0 )
            {
                Object Object5 = Arrays.asList( ReviewSummary_1darray3 );

                ReviewListActivity.l( a ).addAll( (Collection) Object5 );
                ReviewListActivity.t( a ).a( (Collection) ReviewListActivity.l( a ) );
                if( int4 < 20 )
                    ReviewListActivity.n( a ).setOnLastItemVisibleListener( null );
                else
                    ReviewListActivity.n( a ).setOnLastItemVisibleListener( ReviewListActivity.u( a ) );
            }
            else
                ReviewListActivity.v( a );
        }
        else
            com.clilystudio.netbook.util.e.a( (Activity) a, "\u52A0\u8F7D\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u7A0D\u540E\u518D\u8BD5" );
    }
}
