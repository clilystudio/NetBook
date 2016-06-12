
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class bb implements Runnable {

    bb(ba ba1)
    {
        a = ba1;
    }

    private ba a;

    public final void run()
    {
        bi bi2;
        String[] String_1darray3;

        if( !android.support.design.widget.am.a( (AsyncTask) CommonPostListActivity.c( a.a ) ) )
            CommonPostListActivity.c( a.a ).cancel( true );
        CommonPostListActivity.a( a.a, new bi( a.a, (byte) 0 ) );
        bi2 = CommonPostListActivity.f( a.a );
        String_1darray3 = new String[2];
        String_1darray3[0] = CommonPostListActivity.d( a.a );
        String_1darray3[1] = CommonPostListActivity.e( a.a );
        bi2.b( String_1darray3 );
    }
}
