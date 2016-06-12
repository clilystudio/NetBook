
package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.widget.AdContainerLayout;

final class c implements DialogInterface$OnClickListener {

    c(b b1)
    {
        a = b1;
    }

    b a;     // final access specifier removed

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        AdSplashImp.a( a.b, a.a );
        a.b.e();
        a.a.postDelayed( (Runnable) new d( this ), 500L );
    }
}
