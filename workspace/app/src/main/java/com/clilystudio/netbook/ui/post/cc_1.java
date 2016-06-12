
package com.clilystudio.netbook.ui.post;

final class cc implements Runnable {

    cc(OtherUserActivity OtherUserActivity1)
    {
        a = OtherUserActivity1;
    }

    private OtherUserActivity a;

    public final void run()
    {
        OtherUserActivity.e( a );
        OtherUserActivity.f( a );
    }
}
