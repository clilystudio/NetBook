package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class m implements DialogInterface.OnClickListener {
    private /* synthetic */ AddBookHelpActivity a;

    m(AddBookHelpActivity addBookHelpActivity) {
        this.a = addBookHelpActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        this.a.finish();
    }
}
