package com.clilystudio.app.netbook.ui.post;

import android.content.DialogInterface;

final class H
        implements DialogInterface.OnClickListener {
    H(AddReviewRatingActivity paramAddReviewRatingActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        AddReviewRatingActivity.b(this.a);
        this.a.finish();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.H
 * JD-Core Version:    0.6.2
 */