package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class X
        implements DialogInterface.OnClickListener {
    X(AddVoteItemActivity addVoteItemActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
