
package com.clilystudio.netbook.ui.home;

import android.os.AsyncTask;

final class l implements Runnable {

    l(HomeParentActivity HomeParentActivity1)
    {
        a = HomeParentActivity1;
    }

    private HomeParentActivity a;

    public final void run()
    {
        new m( a, (byte) 0 ).b( new Void[0] );
    }
}
