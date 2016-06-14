package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class H implements DialogInterface.OnClickListener {
    private /* synthetic */ AddReviewRatingActivity a;

    H(AddReviewRatingActivity addReviewRatingActivity) {
        this.a = addReviewRatingActivity;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int n) {
        dialogInterface.dismiss();
        AddReviewRatingActivity.b(this.a);
        this.a.finish();
    }
}
