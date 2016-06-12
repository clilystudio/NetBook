
package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import com.clilystudio.netbook.model.TocSummary;

final class bx implements DialogInterface$OnClickListener {

    bx(bw bw1)
    {
        a = bw1;
    }

    private bw a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        DialogInterface1.dismiss();
        ReaderMenuFragment.a( a.c, a.a, a.b );
    }
}
