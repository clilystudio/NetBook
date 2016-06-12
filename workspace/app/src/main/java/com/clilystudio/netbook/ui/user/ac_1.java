
package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class ac implements k {

    ac(PayVoucherFragment PayVoucherFragment1)
    {
        a = PayVoucherFragment1;
    }

    PayVoucherFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        PayVoucherFragment.b( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new ad( this ), 1000L );
    }
}
