
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class bC implements Runnable {

    bC(bB bB1)
    {
        a = bB1;
    }

    private bB a;

    public final void run()
    {
        bJ bJ2;
        String[] String_1darray3;

        if( !android.support.design.widget.am.a( (AsyncTask) GirlTopicListActivity.e( a.a ) ) )
            GirlTopicListActivity.e( a.a ).cancel( true );
        GirlTopicListActivity.a( a.a, new bJ( a.a, (byte) 0 ) );
        bJ2 = GirlTopicListActivity.h( a.a );
        String_1darray3 = new String[2];
        String_1darray3[0] = GirlTopicListActivity.f( a.a );
        String_1darray3[1] = GirlTopicListActivity.g( a.a );
        bJ2.b( String_1darray3 );
    }
}
