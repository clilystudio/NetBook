package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.widget.EditText;

final class U
        implements DialogInterface.OnClickListener {
    U(AddVoteItemActivity paramAddVoteItemActivity, EditText paramEditText) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        AddVoteItemActivity.a(this.b, this.a);
    }
}

