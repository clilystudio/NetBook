
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.support.design.widget.am;

final class ca implements Runnable {

    ca(bZ bZ1)
    {
        a = bZ1;
    }

    private bZ a;

    public final void run()
    {
        if( !android.support.design.widget.am.a( (AsyncTask) OtherUserActivity.b( a.a ) ) )
            OtherUserActivity.b( a.a ).cancel( true );
        OtherUserActivity.c( a.a );
    }
}
