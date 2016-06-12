
package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask$Status;
import com.clilystudio.netbook.widget.av;

final class ab implements av {

    ab(BookHelpActivity BookHelpActivity1)
    {
        a = BookHelpActivity1;
    }

    private BookHelpActivity a;

    public final void a()
    {
        if( BookHelpActivity.h( a ) == null || BookHelpActivity.h( a ).getStatus() == AsyncTask$Status.FINISHED )
            BookHelpActivity.b( a );
    }
}
