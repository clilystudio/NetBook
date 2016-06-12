
package com.clilystudio.netbook.ui.ugcbook;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class a implements j {

    a(AbsUGCListFragment AbsUGCListFragment1)
    {
        a = AbsUGCListFragment1;
    }

    private AbsUGCListFragment a;

    public final void a()
    {
        if( a.h == null || a.h.getStatus() == AsyncTask$Status.FINISHED )
        {
            a.e.setVisibility( 0 );
            if( a.g != null && a.g.getStatus() != AsyncTask$Status.FINISHED && !a.g.isCancelled() )
                a.g.cancel( true );
            a.h = new d( a, (byte) 0 );
            a.h.b( new String[0] );
        }
    }
}
