
package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class b implements DialogInterface$OnClickListener {

    b(AbsDownloadButton AbsDownloadButton1)
    {
        a = AbsDownloadButton1;
    }

    private AbsDownloadButton a;

    public final void onClick(DialogInterface DialogInterface1, int int2)
    {
        a.b();
    }
}
