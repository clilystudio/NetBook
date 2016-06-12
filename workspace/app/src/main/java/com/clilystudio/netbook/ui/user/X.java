
package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.widget.ScrollLoadListView;

final class X implements Runnable {

    X(W W1)
    {
        a = W1;
    }

    private W a;

    public final void run()
    {
        PayConsumeActivity.a( a.b.a ).smoothScrollToPositionFromTop( a.a, 0 );
    }
}
