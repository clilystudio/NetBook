package com.clilystudio.netbook.adapter;

import android.content.DialogInterface;

final class P implements DialogInterface.OnClickListener {
    P(N n) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
