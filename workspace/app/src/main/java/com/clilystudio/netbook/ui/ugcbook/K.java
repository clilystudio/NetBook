package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.widget.EditText;

import com.clilystudio.netbook.model.BookSummary;

final class K
        implements DialogInterface.OnClickListener {
    K(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, BookSummary paramBookSummary, EditText paramEditText) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        this.a.setAppendComment(this.b.getText().toString());
        UGCGuideEditBooksActivity.c(this.c);
    }
}
