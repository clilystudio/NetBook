package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class bu
        implements DialogInterface.OnClickListener {
    bu(bt parambt) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
    }
}

