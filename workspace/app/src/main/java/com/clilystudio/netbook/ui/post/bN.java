
package com.clilystudio.netbook.ui.post;

final class bN implements Runnable {

    bN(MyTweetFragment MyTweetFragment1)
    {
        a = MyTweetFragment1;
    }

    private MyTweetFragment a;

    public final void run()
    {
        MyTweetFragment.d( a );
        MyTweetFragment.e( a );
    }
}
