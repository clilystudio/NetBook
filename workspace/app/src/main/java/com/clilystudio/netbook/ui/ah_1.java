
package com.clilystudio.netbook.ui;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;

final class ah extends e {

    ah(BestReviewsFragment BestReviewsFragment1, byte byte2)
    {
        this( BestReviewsFragment1 );
    }

    private BestReviewsFragment a;

    private ah(BestReviewsFragment BestReviewsFragment1)
    {
        a = BestReviewsFragment1;
    }

    private static transient BookReview[] a(String[] String_1darray1)
    {
        try
        {
            BookReviewRoot BookReviewRoot4;

            com.clilystudio.netbook.api.b.a();
            BookReviewRoot4 = com.clilystudio.netbook.api.b.b().C( String_1darray1[0] );
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
        int int2 = 2;
        Object[] Object_1darray3 = (BookReview[]) Object1;

        super.onPostExecute( Object_1darray3 );
        if( a.getActivity() != null && Object_1darray3 != null )
        {
            View View4 = BestReviewsFragment.a( a ).findViewById( 2131493430 );
            int int5;

            View4.setVisibility( 0 );
            int5 = Object_1darray3.length;
            if( int5 == 0 )
            {
                View4.findViewById( 2131493431 ).setVisibility( 8 );
                View4.findViewById( 2131493433 ).setVisibility( 0 );
                BestReviewsFragment.b( a );
                return;
            }
            else
            {
                int int6;

                View4.findViewById( 2131493431 ).setVisibility( 0 );
                View4.findViewById( 2131493433 ).setVisibility( 8 );
                BestReviewsFragment.c( a );
                if( int5 <= int2 )
                    int2 = int5;
                for( int6 = 0; int6 < int2; ++int6 )
                {
                    Object Object7 = Object_1darray3[int6];

                    if( int6 == 1 )
                        BestReviewsFragment.d( a );
                    BestReviewsFragment.a( a, (BookReview) Object7 );
                }
            }
        }
    }
}
