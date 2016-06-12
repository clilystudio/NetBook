
package com.clilystudio.netbook.hpay100.c;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class n implements DialogInterface$OnClickListener {

    n(DialogInterface$OnClickListener OnClickListener1)
    {
        a = OnClickListener1;
    }

    private DialogInterface$OnClickListener a;     // final access specifier removed

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        if( a != null )
        {
            DialogInterface1.dismiss();
            a.onClick( DialogInterface1, int2 );
        }
        else
            DialogInterface1.dismiss();
    }
}
