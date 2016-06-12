
package com.clilystudio.netbook.ui.post;

final class bQ implements Runnable {

    bQ(bP bP1)
    {
        a = bP1;
    }

    private bP a;

    public final void run()
    {
        MyTweetFragment.i( a.a );
    }
}
