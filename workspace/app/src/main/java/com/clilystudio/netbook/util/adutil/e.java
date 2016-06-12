
package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.ui.SplashActivity;

final class e implements DialogInterface$OnClickListener {

    e(b b1)
    {
        a = b1;
    }

    private b a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        AdSplashImp.a( a.b ).d();
    }
}
