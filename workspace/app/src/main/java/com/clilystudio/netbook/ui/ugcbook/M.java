package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.BookSummary;

import java.util.List;

final class M implements DialogInterface.OnClickListener {
    private /* synthetic */ List a;
    private /* synthetic */ BookSummary b;
    private /* synthetic */ UGCGuideEditBooksActivity c;

    M(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, List list, BookSummary bookSummary) {
        this.c = uGCGuideEditBooksActivity;
        this.a = list;
        this.b = bookSummary;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        this.a.remove(this.b);
        UGCGuideEditBooksActivity.c(this.c);
    }
}
