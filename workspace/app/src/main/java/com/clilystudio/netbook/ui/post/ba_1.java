
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class ba implements k {

    ba(CommonPostListActivity CommonPostListActivity1)
    {
        a = CommonPostListActivity1;
    }

    CommonPostListActivity a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        CommonPostListActivity.b( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new bb( this ), 1000L );
    }
}
