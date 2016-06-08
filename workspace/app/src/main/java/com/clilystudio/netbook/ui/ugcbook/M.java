package com.clilystudio.netbook.ui.ugcbook;

import android.content.DialogInterface;

import com.clilystudio.netbook.model.BookSummary;

import java.util.List;

final class M
        implements DialogInterface.OnClickListener {
    M(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, List paramList, BookSummary paramBookSummary) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        this.a.remove(this.b);
        UGCGuideEditBooksActivity.c(this.c);
    }
}

