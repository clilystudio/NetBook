package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;

final class i
        implements DialogInterface.OnClickListener {
    i(BaseShelfAd paramBaseShelfAd) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
    }
}

