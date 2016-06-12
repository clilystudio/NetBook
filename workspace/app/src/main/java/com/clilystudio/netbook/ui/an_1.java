
package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class an implements k {

    an(BookCategoryFragment BookCategoryFragment1)
    {
        a = BookCategoryFragment1;
    }

    BookCategoryFragment a;     // final access specifier removed

    public final void a(PullToRefreshBase PullToRefreshBase1)
    {
        BookCategoryFragment.c( a ).setVisibility( 8 );
        new Handler().postDelayed( (Runnable) new ao( this ), 1000L );
    }
}
