package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;

final class i implements DialogInterface.OnClickListener {
    i(BaseShelfAd baseShelfAd) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
