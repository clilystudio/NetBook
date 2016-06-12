
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class di implements k {

    di(ReviewListActivity ReviewListActivity1)
    {
        a = ReviewListActivity1;
    }

    ReviewListActivity a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        ReviewListActivity.e( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new dj( this ), 1000L );
    }
}
