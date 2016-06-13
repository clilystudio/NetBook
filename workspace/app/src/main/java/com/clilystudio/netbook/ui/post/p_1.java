package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class p
        implements DialogInterface.OnClickListener {
    p(AddGamePostActivity addGamePostActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
