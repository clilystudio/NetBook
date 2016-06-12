
package com.clilystudio.netbook.ui;

import android.os.AsyncTask;
import android.os.AsyncTask$Status;

final class ao implements Runnable {

    ao(an an1)
    {
        a = an1;
    }

    private an a;

    public final void run()
    {
        if( BookCategoryFragment.d( a.a ) != null && BookCategoryFragment.d( a.a ).getStatus() != AsyncTask$Status.FINISHED && !com.clilystudio.netbook.ui.BookCategoryFragment.d( a.a ).isCancelled() )
            BookCategoryFragment.d( a.a ).cancel( true );
        BookCategoryFragment.a( a.a, new aq( a.a, false ) );
        BookCategoryFragment.d( a.a ).b( new String[0] );
    }
}
