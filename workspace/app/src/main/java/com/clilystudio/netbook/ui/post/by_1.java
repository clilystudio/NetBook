
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class by implements j {

    by(GirlTopicListActivity GirlTopicListActivity1)
    {
        a = GirlTopicListActivity1;
    }

    private GirlTopicListActivity a;

    public final void a()
    {
        if( GirlTopicListActivity.e( a ) == null || GirlTopicListActivity.e( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            bI bI2;
            String[] String_1darray3;

            GirlTopicListActivity.p( a ).setVisibility( 0 );
            if( !android.support.design.widget.am.a( (AsyncTask) GirlTopicListActivity.h( a ) ) )
                GirlTopicListActivity.h( a ).cancel( true );
            GirlTopicListActivity.a( a, new bI( a, (byte) 0 ) );
            bI2 = GirlTopicListActivity.e( a );
            String_1darray3 = new String[2];
            String_1darray3[0] = GirlTopicListActivity.f( a );
            String_1darray3[1] = GirlTopicListActivity.g( a );
            bI2.b( String_1darray3 );
        }
    }
}
