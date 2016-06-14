package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;

final class j implements DialogInterface.OnClickListener {
    private /* synthetic */ View a;
    private /* synthetic */ Context b;
    private /* synthetic */ BaseShelfAd c;

    j(BaseShelfAd baseShelfAd, View view, Context context) {
        this.c = baseShelfAd;
        this.a = view;
        this.b = context;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.c.onAdClick(this.a);
        this.c.recordDownload(this.b);
    }
}
