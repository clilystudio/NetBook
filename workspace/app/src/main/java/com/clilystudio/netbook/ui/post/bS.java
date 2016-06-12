
package com.clilystudio.netbook.ui.post;

final class bS implements Runnable {

    bS(bR bR1)
    {
        a = bR1;
    }

    private bR a;

    public final void run()
    {
        MyTweetFragment.m( a.a );
    }
}
