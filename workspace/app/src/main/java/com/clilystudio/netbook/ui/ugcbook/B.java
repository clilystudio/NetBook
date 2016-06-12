
package com.clilystudio.netbook.ui.ugcbook;

import android.widget.ListView;

final class B implements Runnable {

    B(A A1)
    {
        a = A1;
    }

    private A a;

    public final void run()
    {
        if( UGCGuideAddBookActivity.d( a.a ) != null )
            UGCGuideAddBookActivity.d( a.a ).setSelection( 0 );
    }
}
