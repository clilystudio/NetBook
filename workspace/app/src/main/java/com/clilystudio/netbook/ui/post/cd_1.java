
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask;
import android.view.View;
import android.view.View$OnClickListener;
import java.util.List;

final class cd implements View$OnClickListener {

    cd(OtherUserActivity OtherUserActivity1)
    {
        a = OtherUserActivity1;
    }

    OtherUserActivity a;     // final access specifier removed

    public final void onClick(View View1)
    {
        if( OtherUserActivity.g( a ) == null && OtherUserActivity.h( a ) != 0 )
        {
            ck ck3;
            String[] String_1darray4;

            if( OtherUserActivity.i( a ) != null )
                OtherUserActivity.i( a ).cancel( true );
            OtherUserActivity.a( a, new ck( a, (Runnable) new ce( this ) ) );
            ck3 = OtherUserActivity.i( a );
            String_1darray4 = new String[1];
            String_1darray4[0] = OtherUserActivity.k( a );
            ck3.b( String_1darray4 );
        }
        else
            OtherUserActivity.j( a );
    }
}
