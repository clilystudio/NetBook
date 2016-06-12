package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class b implements DialogInterface$OnClickListener {

    private AbsDownloadButton a;

    b(AbsDownloadButton AbsDownloadButton1) {
        a = AbsDownloadButton1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        a.b();
    }
}
