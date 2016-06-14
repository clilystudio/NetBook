package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.widget.EditText;

final class U implements DialogInterface.OnClickListener {
    private /* synthetic */ EditText a;
    private /* synthetic */ AddVoteItemActivity b;

    U(AddVoteItemActivity addVoteItemActivity, EditText editText) {
        this.b = addVoteItemActivity;
        this.a = editText;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        AddVoteItemActivity.a(this.b, this.a);
    }
}
