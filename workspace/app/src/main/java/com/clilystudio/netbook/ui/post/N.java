package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class N implements DialogInterface.OnClickListener {
    N(AddVoteActivity addVoteActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
