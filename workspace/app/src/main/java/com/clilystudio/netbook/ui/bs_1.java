
package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bs implements k {

    bs(NotifFragment NotifFragment1)
    {
        a = NotifFragment1;
    }

    NotifFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        NotifFragment.a( a ).setVisibility( 8 );
        NotifFragment.b( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new bt( this ), 1000L );
    }
}
