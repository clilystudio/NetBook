
package com.clilystudio.netbook.ui.home;

final class R implements Runnable {

    R(HomeTransparentActivity HomeTransparentActivity1)
    {
        a = HomeTransparentActivity1;
    }

    private HomeTransparentActivity a;

    public final void run()
    {
        a.finish();
        a.overridePendingTransition( 2130968606, 2130968607 );
    }
}
