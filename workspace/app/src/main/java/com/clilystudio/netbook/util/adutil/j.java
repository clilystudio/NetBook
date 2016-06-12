package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.view.View;

final class j implements DialogInterface$OnClickListener {

    private View a;
    private Context b;
    private BaseShelfAd c;
    j(BaseShelfAd BaseShelfAd1, View View2, Context Context3) {
        c = BaseShelfAd1;
        a = View2;
        b = Context3;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        c.onAdClick(a);
        c.recordDownload(b);
    }
}
