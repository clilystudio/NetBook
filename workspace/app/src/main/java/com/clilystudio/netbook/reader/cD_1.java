
package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class cD implements DialogInterface$OnClickListener {

    cD(ReaderWebActivity ReaderWebActivity1)
    {
        a = ReaderWebActivity1;
    }

    private ReaderWebActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        ReaderWebActivity.c( a );
    }
}
