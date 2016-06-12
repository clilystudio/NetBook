
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class az implements k {

    az(BookReviewListFragment BookReviewListFragment1)
    {
        a = BookReviewListFragment1;
    }

    BookReviewListFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        a.d.setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new aA( this ), 1000L );
    }
}
