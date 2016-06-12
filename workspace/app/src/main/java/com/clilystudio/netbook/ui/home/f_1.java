
package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

final class f implements DialogInterface$OnClickListener {

    f(HomeActivity HomeActivity1)
    {
        a = HomeActivity1;
    }

    private HomeActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        as.a();
        as.i();
        e.b( (Context) a );
        a.finish();
    }
}
