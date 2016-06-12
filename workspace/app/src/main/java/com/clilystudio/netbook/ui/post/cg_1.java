
package com.clilystudio.netbook.ui.post;

final class cg implements Runnable {

    cg(cf cf1)
    {
        a = cf1;
    }

    private cf a;

    public final void run()
    {
        OtherUserActivity.o( a.a );
    }
}
