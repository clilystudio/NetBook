
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;
import java.util.Collection;
import java.util.List;

final class aI extends com.clilystudio.netbook.a.e {

    aI(BookReviewListFragment BookReviewListFragment1, byte byte2)
    {
        this( BookReviewListFragment1 );
    }

    private BookReviewListFragment a;

    private aI(BookReviewListFragment BookReviewListFragment1)
    {
        a = BookReviewListFragment1;
    }

    private static transient BookReview[] a(String[] String_1darray1)
    {
        try
        {
            BookReviewRoot BookReviewRoot4;

            com.clilystudio.netbook.api.b.a();
            BookReviewRoot4 = com.clilystudio.netbook.api.b.b().c( String_1darray1[0], String_1darray1[1], 0, 20 );
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
        BookReview[] BookReview_1darray2 = (BookReview[]) Object1;

        super.onPostExecute( BookReview_1darray2 );
        if( a.getActivity() != null )
        {
            a.c();
            if( BookReview_1darray2 != null )
            {
                int int3;

                BookReviewListFragment.g( a );
                BookReviewListFragment.d( a ).clear();
                int3 = BookReview_1darray2.length;
                if( int3 > 0 )
                {
                    int int4 = BookReview_1darray2.length;
                    int int5;

                    for( int5 = 0; int5 < int4; ++int5 )
                    {
                        BookReview BookReview6 = BookReview_1darray2[int5];

                        BookReviewListFragment.d( a ).add( BookReview6 );
                    }
                    BookReviewListFragment.h( a ).a( (Collection) BookReviewListFragment.d( a ) );
                    if( int3 < 20 )
                        a.a.setOnLastItemVisibleListener( null );
                    else
                    {
                        a.a.setOnLastItemVisibleListener( BookReviewListFragment.i( a ) );
                        return;
                    }
                }
                else
                {
                    a.b();
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
