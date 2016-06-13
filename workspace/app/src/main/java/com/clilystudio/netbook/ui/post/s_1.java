package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class s
        implements DialogInterface.OnClickListener {
    private /* synthetic */ AddGamePostActivity a;

    s(AddGamePostActivity addGamePostActivity) {
        this.a = addGamePostActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
