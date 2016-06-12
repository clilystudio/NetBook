
package com.clilystudio.netbook.ui.user;

final class h implements Runnable {

    h(ChargeActivity ChargeActivity1)
    {
        a = ChargeActivity1;
    }

    private ChargeActivity a;

    public final void run()
    {
        ChargeActivity.a( a );
    }
}
