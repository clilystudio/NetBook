
package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnDismissListener;

final class aQ implements DialogInterface$OnDismissListener {

    aQ(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onDismiss(DialogInterface DialogInterface1)
    {
        ReaderActivity.e( a, false );
    }
}
