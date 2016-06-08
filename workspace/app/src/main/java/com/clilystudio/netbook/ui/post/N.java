package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class N
        implements DialogInterface.OnClickListener {
    N(AddVoteActivity paramAddVoteActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
    }
}

