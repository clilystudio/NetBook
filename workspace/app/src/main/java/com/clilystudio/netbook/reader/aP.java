
package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

final class aP implements DialogInterface$OnCancelListener {

    aP(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onCancel(DialogInterface DialogInterface1)
    {
        if( ReaderActivity.O( a ) && !com.clilystudio.netbook.reader.ReaderActivity.ac( a ) )
            a.finish();
    }
}
