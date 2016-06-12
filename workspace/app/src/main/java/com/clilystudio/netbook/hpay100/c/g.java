
package com.clilystudio.netbook.hpay100.c;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import android.view.View$OnClickListener;

final class g implements View$OnClickListener {

    g(e e1, a a2)
    {
        a = e1;
        b = a2;
    }

    private e a;
    private a b;     // final access specifier removed

    public final void onClick(View View1)
    {
        e.b( a ).onClick( (DialogInterface) b, -2 );
    }
}
