
package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bB implements k {

    bB(GirlTopicListActivity GirlTopicListActivity1)
    {
        a = GirlTopicListActivity1;
    }

    GirlTopicListActivity a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        GirlTopicListActivity.d( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new bC( this ), 1000L );
    }
}
