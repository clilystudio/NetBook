package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class l
        implements DialogInterface.OnClickListener {
    l(AddBookHelpActivity addBookHelpActivity) {
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
    }
}
