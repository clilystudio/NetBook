
package com.clilystudio.netbook.ui.home;

final class M implements Runnable {

    M(L L1)
    {
        a = L1;
    }

    private L a;

    public final void run()
    {
        HomeTopicFragment.a( a.a );
    }
}
