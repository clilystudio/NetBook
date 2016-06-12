package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.widget.EditText;

import com.clilystudio.netbook.model.BookSummary;

final class J implements DialogInterface$OnClickListener {

    private BookSummary a;
    private EditText b;
    private UGCGuideEditBooksActivity c;
    J(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1, BookSummary BookSummary2, EditText EditText3) {
        c = UGCGuideEditBooksActivity1;
        a = BookSummary2;
        b = EditText3;
    }

    public final void onClick(DialogInterface DialogInterface1, int int2) {
        c.a.put(a.getId(), b.getText().toString());
    }
}
