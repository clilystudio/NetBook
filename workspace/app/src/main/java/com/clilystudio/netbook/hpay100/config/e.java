
package com.clilystudio.netbook.hpay100.config;

import android.content.Context;

final class e implements Runnable {

    e(Context Context1)
    {
        a = Context1;
    }

    private Context a;     // final access specifier removed

    public final void run()
    {
        c.b( a );
    }
}
