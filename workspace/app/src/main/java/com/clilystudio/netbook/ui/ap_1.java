
package com.clilystudio.netbook.ui;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class ap implements j {

    ap(BookCategoryFragment BookCategoryFragment1)
    {
        a = BookCategoryFragment1;
    }

    private BookCategoryFragment a;

    public final void a()
    {
        if( BookCategoryFragment.d( a ) == null || BookCategoryFragment.d( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            BookCategoryFragment.f( a ).setVisibility( 0 );
            BookCategoryFragment.a( a, new aq( a ) );
            BookCategoryFragment.d( a ).b( new String[0] );
        }
    }
}
