package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class m
        implements DialogInterface.OnClickListener {
    m(AddBookHelpActivity paramAddBookHelpActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

