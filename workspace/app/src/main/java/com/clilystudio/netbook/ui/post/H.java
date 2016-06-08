package com.clilystudio.netbook.ui.post;

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

