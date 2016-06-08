package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class s
        implements DialogInterface.OnClickListener {
    s(AddGamePostActivity paramAddGamePostActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        this.a.finish();
    }
}

