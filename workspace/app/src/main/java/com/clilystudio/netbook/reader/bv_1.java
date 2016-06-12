
package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.view.View;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;

final class bv implements DialogInterface$OnClickListener {

    bv(bt bt1, View View2)
    {
        b = bt1;
        a = View2;
    }

    private View a;
    private bt b;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        ReaderMenuFragment.j( b.a ).onAdClick( a );
        ReaderMenuFragment.j( b.a ).recordClick( a );
    }
}
