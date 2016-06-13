package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class C
        implements DialogInterface.OnClickListener {
    private /* synthetic */ AddReviewActivity a;

    C(AddReviewActivity addReviewActivity) {
        this.a = addReviewActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        AddReviewActivity.c(this.a);
        this.a.finish();
    }
}
