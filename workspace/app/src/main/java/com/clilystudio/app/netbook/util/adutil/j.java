package com.clilystudio.app.netbook.util.adutil;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.j
 * JD-Core Version:    0.6.2
 */