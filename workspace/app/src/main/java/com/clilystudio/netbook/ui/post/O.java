package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class O
        implements DialogInterface.OnClickListener {
    private /* synthetic */ AddVoteActivity a;

    O(AddVoteActivity addVoteActivity) {
        this.a = addVoteActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
