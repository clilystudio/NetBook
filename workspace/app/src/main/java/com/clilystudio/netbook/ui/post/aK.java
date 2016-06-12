
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class aK implements k {

    aK(BookTopicListFragment BookTopicListFragment1)
    {
        a = BookTopicListFragment1;
    }

    BookTopicListFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        a.d.setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new aL( this ), 1000L );
    }
}
