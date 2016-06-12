
package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class B implements k {

    B(MyTopicFragment MyTopicFragment1)
    {
        a = MyTopicFragment1;
    }

    MyTopicFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        MyTopicFragment.a( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new C( this ), 1000L );
    }
}
