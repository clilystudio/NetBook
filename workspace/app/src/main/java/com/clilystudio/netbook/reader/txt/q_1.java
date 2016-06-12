
package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface$OnCancelListener;

final class q implements DialogInterface$OnCancelListener {

    q(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onCancel(DialogInterface DialogInterface1)
    {
        a.finish();
    }
}
