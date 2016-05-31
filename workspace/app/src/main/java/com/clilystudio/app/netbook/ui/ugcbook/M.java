package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.DialogInterface;

import com.clilystudio.app.netbook.model.BookSummary;

import java.util.List;

final class M
        implements DialogInterface.OnClickListener {
    M(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, List paramList, BookSummary paramBookSummary) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        this.a.remove(this.b);
        UGCGuideEditBooksActivity.c_initContentView(this.c);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.M
 * JD-Core Version:    0.6.2
 */