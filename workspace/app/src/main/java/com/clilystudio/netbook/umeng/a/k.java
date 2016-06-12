
package com.clilystudio.netbook.umeng.a;

import android.content.Context;

final class k extends n {

    k(j j1, Context Context2)
    {
        a = j1;
        b = Context2;
    }

    private j a;
    private Context b;     // final access specifier removed

    public final void a()
    {
        j.a( a, b.getApplicationContext() );
    }
}
