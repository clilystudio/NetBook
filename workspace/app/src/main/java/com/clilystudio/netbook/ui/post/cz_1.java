
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask$Status;
import com.clilystudio.netbook.widget.av;

final class cz implements av {

    cz(ReviewActivity ReviewActivity1)
    {
        a = ReviewActivity1;
    }

    private ReviewActivity a;

    public final void a()
    {
        if( ReviewActivity.i( a ) == null || ReviewActivity.i( a ).getStatus() == AsyncTask$Status.FINISHED )
            ReviewActivity.b( a );
    }
}
