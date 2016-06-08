package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class X
        implements DialogInterface.OnClickListener {
    X(AddVoteItemActivity paramAddVoteItemActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
    }
}

