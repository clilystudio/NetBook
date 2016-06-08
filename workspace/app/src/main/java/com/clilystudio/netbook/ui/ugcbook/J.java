package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.widget.EditText;

import com.clilystudio.netbook.model.BookSummary;

final class J
        implements DialogInterface.OnClickListener {
    J(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, BookSummary paramBookSummary, EditText paramEditText) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        this.c.a.put(this.a.getId(), this.b.getText().toString());
    }
}

