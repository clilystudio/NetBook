package com.clilystudio.netbook.reader;

import android.content.DialogInterface;

final class bu implements DialogInterface.OnClickListener {
    bu(bt bt2) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
