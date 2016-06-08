package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;

final class j
        implements DialogInterface.OnClickListener {
    j(BaseShelfAd paramBaseShelfAd, View paramView, Context paramContext) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        this.c.onAdClick(this.a);
        this.c.recordDownload(this.b);
    }
}

