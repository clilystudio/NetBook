
package com.clilystudio.netbook.ui;

import android.widget.ListView;
import com.clilystudio.netbook.event.k;

final class aN implements Runnable {

    aN(BookRankListActivity BookRankListActivity1, k k2)
    {
        b = BookRankListActivity1;
        a = k2;
    }

    private k a;
    private BookRankListActivity b;

    public final void run()
    {
        BookRankListActivity.b( b ).smoothScrollToPositionFromTop( a.a(), 0 );
    }
}
