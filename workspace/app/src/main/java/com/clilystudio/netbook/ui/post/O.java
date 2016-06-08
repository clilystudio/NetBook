package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class O
        implements DialogInterface.OnClickListener {
    O(AddVoteActivity paramAddVoteActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

