package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.widget.EditText;

import com.clilystudio.netbook.model.BookSummary;

final class K
        implements DialogInterface.OnClickListener {
    private /* synthetic */ BookSummary a;
    private /* synthetic */ EditText b;
    private /* synthetic */ UGCGuideEditBooksActivity c;

    K(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, BookSummary bookSummary, EditText editText) {
        this.c = uGCGuideEditBooksActivity;
        this.a = bookSummary;
        this.b = editText;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.setAppendComment(this.b.getText().toString());
        UGCGuideEditBooksActivity.c(this.c);
    }
}
