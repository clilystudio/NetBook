
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class aP implements j {

    aP(BookTopicListFragment BookTopicListFragment1)
    {
        a = BookTopicListFragment1;
    }

    private BookTopicListFragment a;

    public final void a()
    {
        if( BookTopicListFragment.b( a ) == null || BookTopicListFragment.b( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            aQ aQ2;
            String[] String_1darray3;

            a.c.setVisibility( 0 );
            if( !android.support.design.widget.am.a( (AsyncTask) BookTopicListFragment.i( a ) ) )
                BookTopicListFragment.i( a ).cancel( true );
            BookTopicListFragment.a( a, new aQ( a, (byte) 0 ) );
            aQ2 = BookTopicListFragment.b( a );
            String_1darray3 = new String[2];
            String_1darray3[0] = a.a();
            String_1darray3[1] = a.f;
            aQ2.b( String_1darray3 );
        }
    }
}
