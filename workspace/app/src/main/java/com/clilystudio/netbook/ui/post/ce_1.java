
package com.clilystudio.netbook.ui.post;

final class ce implements Runnable {

    ce(cd cd1)
    {
        a = cd1;
    }

    private cd a;

    public final void run()
    {
        OtherUserActivity.j( a.a );
    }
}
