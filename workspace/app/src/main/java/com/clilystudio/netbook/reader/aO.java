
package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class aO implements DialogInterface$OnClickListener {

    aO(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        ReaderActivity.h( a, int2 );
        ReaderActivity.ab( a ).dismiss();
    }
}
