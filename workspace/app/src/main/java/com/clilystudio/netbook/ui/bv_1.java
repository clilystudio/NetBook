
package com.clilystudio.netbook.ui;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.netbook.model.Account;

final class bv implements j {

    bv(NotifFragment NotifFragment1)
    {
        a = NotifFragment1;
    }

    private NotifFragment a;

    public final void a()
    {
        if( NotifFragment.n( a ) == null || NotifFragment.n( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            bw bw2;
            String[] String_1darray3;

            NotifFragment.i( a ).setVisibility( 0 );
            if( NotifFragment.o( a ) != null && NotifFragment.o( a ).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.NotifFragment.o( a ).isCancelled() )
                NotifFragment.o( a ).cancel( true );
            NotifFragment.a( a, new bw( a, (byte) 0 ) );
            bw2 = NotifFragment.n( a );
            String_1darray3 = new String[1];
            String_1darray3[0] = NotifFragment.c( a ).getToken();
            bw2.b( String_1darray3 );
        }
    }
}
