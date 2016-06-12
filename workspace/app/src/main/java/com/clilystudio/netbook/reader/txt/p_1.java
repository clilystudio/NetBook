
package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class p implements DialogInterface$OnClickListener {

    p(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        ReaderTxtActivity.J( a );
    }
}
