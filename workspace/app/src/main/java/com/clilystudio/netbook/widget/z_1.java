package com.clilystudio.netbook.widget;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class z implements DialogInterface$OnClickListener {

    private GameDownloadButton a;

    z(GameDownloadButton GameDownloadButton1) {
        a = GameDownloadButton1;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        a.f();
    }
}
