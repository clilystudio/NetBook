package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class M
        implements DialogInterface.OnClickListener {
    M(AddVoteActivity addVoteActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
