
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class an implements k {

    an(BookHelpListActivity BookHelpListActivity1)
    {
        a = BookHelpListActivity1;
    }

    BookHelpListActivity a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        BookHelpListActivity.d( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new ao( this ), 1000L );
    }
}
