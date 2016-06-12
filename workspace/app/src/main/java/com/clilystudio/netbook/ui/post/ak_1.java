
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class ak implements j {

    ak(BookHelpListActivity BookHelpListActivity1)
    {
        a = BookHelpListActivity1;
    }

    private BookHelpListActivity a;

    public final void a()
    {
        if( BookHelpListActivity.e( a ) == null || BookHelpListActivity.e( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            au au2;
            String[] String_1darray3;

            BookHelpListActivity.p( a ).setVisibility( 0 );
            if( !android.support.design.widget.am.a( (AsyncTask) BookHelpListActivity.h( a ) ) )
                BookHelpListActivity.h( a ).cancel( true );
            BookHelpListActivity.a( a, new au( a, (byte) 0 ) );
            au2 = BookHelpListActivity.e( a );
            String_1darray3 = new String[2];
            String_1darray3[0] = BookHelpListActivity.f( a );
            String_1darray3[1] = BookHelpListActivity.g( a );
            au2.b( String_1darray3 );
        }
    }
}
