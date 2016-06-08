package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class M
        implements DialogInterface.OnClickListener {
    M(AddVoteActivity paramAddVoteActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
    }
}

