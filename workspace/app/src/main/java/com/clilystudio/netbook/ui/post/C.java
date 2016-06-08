package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;

final class C
        implements DialogInterface.OnClickListener {
    C(AddReviewActivity paramAddReviewActivity) {
    }

    public final void onClick(DialogInterface paramDialogInterface, int paramInt) {
        paramDialogInterface.dismiss();
        AddReviewActivity.c(this.a);
        this.a.finish();
    }
}

