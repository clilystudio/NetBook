
package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class aX implements DialogInterface$OnClickListener {

    aX(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        ReaderActivity.ad( a );
        a.finish();
    }
}
