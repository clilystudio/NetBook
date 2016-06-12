
package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

final class c implements Runnable {

    c(b b1)
    {
        a = b1;
    }

    private b a;

    public final void run()
    {
        if( a.a.g != null && a.a.g.getStatus() != AsyncTask$Status.FINISHED && !a.a.g.isCancelled() )
            a.a.g.cancel( true );
        a.a.g = new e( a.a, (byte) 0 );
        a.a.g.b( new String[0] );
    }
}
