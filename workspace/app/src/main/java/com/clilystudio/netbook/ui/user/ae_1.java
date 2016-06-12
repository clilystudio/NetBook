
package com.clilystudio.netbook.ui.user;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class ae implements j {

    ae(PayVoucherFragment PayVoucherFragment1)
    {
        a = PayVoucherFragment1;
    }

    private PayVoucherFragment a;

    public final void a()
    {
        if( PayVoucherFragment.c( a ) == null || PayVoucherFragment.c( a ).getStatus() == AsyncTask$Status.FINISHED )
        {
            PayVoucherFragment.f( a ).setVisibility( 0 );
            PayVoucherFragment.a( a, new af( a ) );
            PayVoucherFragment.c( a ).b( new String[0] );
        }
    }
}
